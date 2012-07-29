module Roglew
  class RenderContext
    @registered_extensions = {}

    def initialize(hdc)
      @hdc = hdc
      @loaded_extensions = Set.new

      pfd = Gdi32::PIXELFORMATDESCRIPTOR.new
      pfd.dwFlags = [:DOUBLEBUFFER, :SUPPORT_OPENGL, :DRAW_TO_WINDOW]
      pfd.cColorBits = 24
      pfd.cAlphaBits = 8
      pfd.cDepthBits = 32

      pxfmt = Gdi32.choose_pixel_format(@hdc, pfd)
      raise InvalidPixelFormatError,
            "(ChoosePixelFormat) GetLastError returned #{Kernel32.last_error}" if pxfmt == 0

      #Can't use DescribePixelFormat. Blows up remote desktop
      #
      #max_pfd = Gdi32.describe_pixel_format(@hdc, pxfmt, Gdi32::PIXELFORMATDESCRIPTOR.size, pfd)
      #puts "#\t" + Gdi32::PIXELFORMATDESCRIPTOR.members.select { |x| x != :nSize }.join("\t")
      #max_pfd.times do |i|
      #	pfd2 = Gdi32::PIXELFORMATDESCRIPTOR.new
      #	Gdi32.describe_pixel_format(@hdc, i+1, Gdi32::PIXELFORMATDESCRIPTOR.size, pfd2)
      #	puts "#{i + 1}\t" + Gdi32::PIXELFORMATDESCRIPTOR.
      #      members.select { |x| x != :nSize }.map { |x| pfd2.send(x).inspect }.join("\t")
      #end

      unless Gdi32.set_pixel_format(@hdc, pxfmt, pfd)
        raise InvalidPixelFormatError,
              "(SetPixelFormat) GetLastError returned #{Kernel32.last_error}"
      end

      @hrc = GL.create_context(@hdc)

      old_hrc = nil

      bind do
        #load extensions_string
        wglGetExtensionsStringARB = function(:wglGetExtensionsStringARB, [:pointer], :string)
        if wglGetExtensionsStringARB
          define_singleton_method(:get_extensions_string) { wglGetExtensionsStringARB.(@hdc) }
        else
          wglGetExtensionsStringEXT = function(:wglGetExtensionsStringEXT, [], :string)
          define_singleton_method(:get_extensions_string) { wglGetExtensionsStringEXT.() }
        end

        @available_extensions = Set.new(GL.get_string(GL::EXTENSIONS).split(' ')).merge(
          (respond_to?(:get_extensions_string) ? get_extensions_string : '')
          .split(' ')
        ).freeze

        major = GL.get_integers(GL::MAJOR_VERSION)
        if major > 2 && supports?(:WGL_ARB_create_context)
          attribs = [WGL::CONTEXT_MAJOR_VERSION_ARB, major,
                     WGL::CONTEXT_MINOR_VERSION_ARB, GL.get_integers(GL::MINOR_VERSION),
                     WGL::CONTEXT_FLAGS_ARB, WGL::CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, 0]
          ptr_attribs = FFI::MemoryPointer.new(:int, attribs.length)
          ptr_attribs.write_array_of_int(attribs)
          old_hrc = @hrc

          #HGLRC wglCreateContextAttribsARB(HDC hDC, HGLRC hShareContext, const int* attribList)
          @hrc = function(:wglCreateContextAttribsARB, [:pointer]*3, :pointer).(@hdc, nil, ptr_attribs)
        end
      end

      GL.delete_context(old_hrc) if old_hrc

      self.class.finalize(self, @hdc, @hrc)
    end

    def self.finalize(obj, hdc, hrc)
      ObjectSpace.define_finalizer(obj, proc do
        unbind
        GL.make_current(hdc, nil)
        GL.delete_context(hrc)
      end)
    end

    def self.register_extension(name, path)
      @registered_extensions[name.to_s] = path
    end

    def load_extensions(*names)
      paths = self.instance_variable_get(:@registered_extensions)
      names.each do |ns|
        ns = [*ns]
        optional = !ns.last #optional if last.nil? || last == false (not required)
        ns = ns[0, ns.length - 1] if optional

        ns2 = ns.select { |n| supports?(n) }
        raise ExtensionError, "no extension supported: #{ns.inspect}" if ns2.empty? && !optional
        ns3 = ns2.select { |n| paths[n] }

        if ns3.empty?
          (warn "no extension supported or registered: #{ns.inspect}"; next) if optional
          raise ExtensionError, "no paths registered for extensions: #{ns2.inspect}"
        end

        ext = ns3.first
        require paths[ext]

        if Object.const_defined?(ext)
          ext_module = Object.const_get(ext)
          ext_module.on_load(self) if ext_module.singleton_class.method_defined?(:on_load)
        end

        @loaded_extensions << ns3.first

      end

      self.class.send(:call_hooks, :on_load, self)
      self.class.clear_hooks(:on_load)

      loaded_extensions
    end

    def available_extensions
      @available_extensions.dup
    end

    def loaded_extensions
      @loaded_extensions.dup
    end

    def bind(&block)
      GL.make_current(@hdc, @hrc)
      if block_given?
        ergo &block
        self.class.unbind
      end
      self
    end

    def self.unbind
      GL.make_current(nil, nil)
    end

    def texture2d(*args)
      Texture2d.new(self, *args)
    end

    def bind_texture(target, texture)
      GL.bind_texture(target, texture)
    end

    def swap_buffers
      Gdi32.swap_buffers(@hdc)
    end

    def supports?(extension)
      @available_extensions.include? extension.to_s
    end

    def function(function_name, parameters, return_type)
      ptr = GL.proc_address(function_name.to_s)
      return nil if ptr.null?
      return_type = GL.find_type(return_type) || return_type
      parameters = parameters.map { |p| GL.find_type(p) || p }
      func = FFI::Function.new(return_type, parameters, ptr, convention: :stdcall)
    end

    def def_function(*args)
      if args.length < 3
        raise ArgumentError, "wrong number of arguments (#{args.length} for 3)"
      elsif args.length > 4
        raise ArgumentError, "wrong number of arguments (#{args.length} for 4)"
      elsif args.length == 3
        function_name, parameters, return_type = args
        method_name = function_name
      else
        method_name, function_name, parameters, return_type = args
      end

      func = function(function_name, parameters, return_type)
      define_singleton_method(method_name) { |*a| func.(*a) }
    end

    register_extension 'GL_ARB_framebuffer_object', 'roglew/extensions/GL_ARB_framebuffer_object'
    register_extension 'GL_EXT_framebuffer_object', 'roglew/extensions/GL_EXT_framebuffer_object'
  end
end