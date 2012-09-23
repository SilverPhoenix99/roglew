module Roglew
  class RenderContext
    include Contextual

    GL.functions.each  { |name, *_| class_eval "def gl#{name}(*args) GL.#{name}(*args) end" }
    WGL.functions.each { |name, *_| class_eval "def wgl#{name}(*args) WGL.#{name}(*args) end" }

    #if version not passed, builds context with latest version
    def initialize(hdc, version = nil)
      @hdc = hdc

      initialize_pixel_format

      @hrc, old_hrc = wglCreateContext(@hdc), nil

      bind do
        #check version
        max_version = glGetString(GL::VERSION).split('.', 2).map!(&:to_i)

        #if max OpelGL version is less than requested, give error
        raise ArgumentError, "unsupported version #{version.join('.')}" if version && (max_version <=> version < 0)

        @version = version || max_version
        old_hrc, @hrc = @hrc, upgrade_context if @version[0] > 2

        @loaded_extensions = Set.new
        load_core_extensions
        load_vendor_extensions
        load_platform_extensions
      end

      wglDeleteContext(old_hrc) if old_hrc

      self.class.finalize(self, @hrc)
    end

    def self.finalize(obj, hrc)
      ObjectSpace.define_finalizer(obj, proc do
        WGL.DeleteContext(hrc) #assumes that context was unbound
      end)
    end

    def bind(&block)
      wglMakeCurrent(@hdc, @hrc)
      if block_given?
        ergo &block
        unbind
      end
      self
    end

    def unbind
      wglMakeCurrent(nil, nil)
    end

    def version; @version.dup end

    def loaded_extensions; @loaded_extensions.dup end

    def supports?(extension); !!@loaded_extensions[extension] end

    def create_texture2d(*args)
      Texture2d.new(self, *args)
    end

    def gen_textures(count = 1)
      p = FFI::MemoryPointer.new(:uint, count)
      glGenTextures(count, p)
      ids = p.read_array_of_uint(count)
      count == 1 ? ids[0] : ids
    end

    def get_errors
      errors = []
      while (error = glGetError) != 0
        errors << error
      end
      errors
    end

    def get_integers(pname, count = 1)
      p = FFI::MemoryPointer.new(:int, count)
      glGetIntegerv(pname, p)
      result = p.read_array_of_int(count)
      count == 1 ? result[0] : result
    end

    def swap_buffers
      Gdi32.swap_buffers(@hdc)
    end

    def tex_parameter(target, pname, *params)
      params.flatten!
      type = params.all? { |param| param.is_a? Integer } ? 'int' : 'float'
      ptr = FFI::MemoryPointer.new(type.to_sym, params.length)
      ptr.send("write_array_of_#{type}", params)
      send("glTexParameter#{type[0]}v", target, pname, ptr)
    end

    #------
    private

    def initialize_pixel_format
      pfd = Gdi32::PIXELFORMATDESCRIPTOR.new
      pfd.dwFlags = [:DOUBLEBUFFER, :SUPPORT_OPENGL, :DRAW_TO_WINDOW]
      pfd.cColorBits = 24
      pfd.cAlphaBits = 8
      pfd.cDepthBits = 32

      pxfmt = Gdi32.ChoosePixelFormat(@hdc, pfd)
      raise InvalidPixelFormatError,
            "(ChoosePixelFormat) GetLastError returned #{Kernel32.GetLastError}" if pxfmt == 0

      #Can't use DescribePixelFormat. Blows up remote desktop
      #
      #max_pfd = Gdi32.DescribePixelFormat(@hdc, pxfmt, Gdi32::PIXELFORMATDESCRIPTOR.size, pfd)
      #puts "#\t" + Gdi32::PIXELFORMATDESCRIPTOR.members.select { |x| x != :nSize }.join("\t")
      #max_pfd.times do |i|
      #	pfd2 = Gdi32::PIXELFORMATDESCRIPTOR.new
      #	Gdi32.DescribePixelFormat(@hdc, i+1, Gdi32::PIXELFORMATDESCRIPTOR.size, pfd2)
      #	puts "#{i + 1}\t" + Gdi32::PIXELFORMATDESCRIPTOR.
      #      members.select { |x| x != :nSize }.map { |x| pfd2.send(x).inspect }.join("\t")
      #end

      raise InvalidPixelFormatError,
            "(SetPixelFormat) GetLastError returned #{Kernel32.GetLastError}" unless Gdi32.SetPixelFormat(@hdc, pxfmt, pfd)
    end

    def upgrade_context
      create_context_attribs = WGL.get_function(:WGL_ARB_create_context, :wglCreateContextAttribsARB)
      raise 'undefined function wglCreateContextAttribsARB' unless create_context_attribs

      attribs = [WGL::CONTEXT_MAJOR_VERSION_ARB, @version[0],
                 WGL::CONTEXT_MINOR_VERSION_ARB, @version[1],
                 WGL::CONTEXT_FLAGS_ARB,         WGL::CONTEXT_FORWARD_COMPATIBLE_BIT_ARB,
                 0]
      ptr_attribs = FFI::MemoryPointer.new(:int, attribs.length)
      ptr_attribs.write_array_of_int(attribs)

      #HGLRC wglCreateContextAttribsARB(HDC hDC, HGLRC hShareContext, const int* attribList)
      create_context_attribs.(@hdc, nil, ptr_attribs)
    end

    def load_core_extensions
      GL.extensions.select { |name, _| name.is_a?(Array) && (name <=> @version) <= 0 }.
        each do |_, functions|
          functions.each do |name, parameters, ret_type|
            function = GL.get_function(name, parameters, ret_type)
            define_singleton_method(name) { |*a| function.(*a) } if function
          end
        end
    end

    def load_vendor_extensions
      load_extensions(GL, core_extension_list)
    end

    def load_platform_extensions
      load_extensions(GL, core_extension_list)
      load_extensions(WGL, platform_extension_list)
    end

    def core_extension_list
      if @version[0] < 3
        glGetString(GL::EXTENSIONS).split
      else
        get_integers(GL::NUM_EXTENSIONS).times.map { |i| glGetStringi(GL::EXTENSIONS, i) }
      end.map!(&:to_sym)
    end

    def platform_extension_list
      if (func = WGL.get_function(:WGL_ARB_extensions_string, :wglGetExtensionsStringARB))
        func.(@hdc)
      elsif (func = WGL.get_function(:WGL_EXT_extensions_string, :wglGetExtensionsStringEXT))
        func.()
      else
        ''
      end.split.map!(&:to_sym)
    end

    def load_extensions(mod, extension_list)
      mod_name = mod.name.split('::').last

      #puts mod_name
      extension_list.select { |ext| ext =~ /^#{mod_name}_/ }.each do |ext|
        @loaded_extensions << ext
        exts = mod.extensions[ext]
        #puts "    #{ext}" unless exts
        exts.each do |name, parameters, ret_type|
          function = mod.get_function(name, parameters, ret_type)
          define_singleton_method(name) { |*a| function.(*a) } if function
        end if exts
      end
    end
  end
end