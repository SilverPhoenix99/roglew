module Roglew
  class RenderContext
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
        @loaded_extensions = Set.new
        list = extension_list(:core)
        list.each { |ext| load_extension(ext) }
        old_hrc, @hrc = @hrc, upgrade_context if @version[0] > 2
        extension_list(:gl, :platform).each { |ext| load_extension(ext) }
      end

      @attribs = Set[GL::DITHER, GL::MULTISAMPLE]

      wglDeleteContext(old_hrc) if old_hrc

      self.class.finalize(self, @hrc)
    end

    alias_method :get_proc_address, :wglGetProcAddress

    def swap_buffers
      Gdi32.SwapBuffers(@hdc)
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
      load_extension(:WGL_ARB_create_context)

      raise 'undefined function wglCreateContextAttribsARB' unless respond_to?(:wglCreateContextAttribsARB)

      attribs = [WGL::CONTEXT_MAJOR_VERSION_ARB, @version[0],
                 WGL::CONTEXT_MINOR_VERSION_ARB, @version[1],
                 WGL::CONTEXT_FLAGS_ARB,         WGL::CONTEXT_FORWARD_COMPATIBLE_BIT_ARB,
                 0]
      ptr_attribs = FFI::MemoryPointer.new(:int, attribs.length)
      ptr_attribs.write_array_of_int(attribs)

      wglCreateContextAttribsARB(@hdc, nil, ptr_attribs)
    end

    def extension_list_platform
      if (func = get_function(:wglGetExtensionsStringARB, [:pointer], :string))
        func.(@hdc)
      elsif (func = get_function(:wglGetExtensionsStringEXT, [], :string))
        func.()
      else
        ''
      end.split.map!(&:to_sym)
    end

    def make_current
      wglMakeCurrent(@hdc, @hrc)
    end
  end
end