module Roglew
  class RenderContext
    include Roglew::Contextual(nil)
    include GLObject

    GL.functions.each  { |name, *_| class_eval "def gl#{name}(*args) GL.#{name}(*args) end" }
    WGL.functions.each { |name, *_| class_eval "def wgl#{name}(*args) WGL.#{name}(*args) end" }

    #if version not passed, builds context with latest version
    def initialize(hdc, version = nil)
      @hdc = hdc
      @attribs = Set[GL::DITHER, GL::MULTISAMPLE]

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

    def_gen :textures, :glGenTextures
    def_delete :textures, :glDeleteTextures

    def begin(mode, &block)
      glBegin(mode)
      return unless block_given?
      ergo &block
      glEnd
    end

    %w'points lines line_strip line_loop triangles triangle_strip triangle_fan quads quad_strip polygon'.each do |v|
      class_eval("def #{v}(&block) self.begin(GL::#{v.upcase}, &block) end")
    end

    def clear(*flags)
      glClear(flags.reduce(&:|))
    end

    def disable(*caps)
      caps = Set[*caps] & @attribs
      caps.each do |cap|
        glDisable(cap)
        @attribs.delete(cap)
      end
      return unless block_given?
      yield
      enable(caps)
    end

    def enable(*caps)
      caps = Set[*caps] - @attribs
      caps.each { |cap| glEnable(cap) }
      @attribs.merge(caps)
      return unless block_given?
      yield
      disable(*caps)
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

    def get_shader(shader, pname)
      p = FFI::MemoryPointer.new(:int)
      glGetShaderiv(shader.id, pname, p)
      result = p.read_int
      [GL::DELETE_STATUS, GL::COMPILE_STATUS].include?(pname) ? result == GL::TRUE : result
    end

    def get_shader_info_log(shader)
      length = shader.info_log_length
      p = FFI::MemoryPointer.new(:char, length)
      glGetShaderInfoLog(shader.id, length, nil, p)
      p.read_string
    end

    def shader_sources(shader, *srcs)
      ps = FFI::MemoryPointer.new(:string, srcs.length)
      ps.write_array_of_pointer(srcs.map { |src| FFI::MemoryPointer.from_string(src) })
      pl = FFI::MemoryPointer.new(:int, srcs.length)
      pl.write_array_of_int(srcs.map { |src| src.length })
      glShaderSource(shader.id, srcs.length, ps, pl)
      nil
    end

    def swap_buffers
      Gdi32.SwapBuffers(@hdc)
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
      #TODO load as extension CL_core_*_*
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