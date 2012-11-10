module Roglew
  class RenderHandle
    def initialize(hdc)
      @hdc = hdc
      init_pixel_format()
      @hrc = GL.create_context(@hdc)

      @context_class = Class.new(RenderContext)
    end

    def bind(deferred = nil)
      deferred = [deferred, self.deferred?, self.class.deferred?].compact.first

      ctx = @context_class.new(self, deferred)
      GL.make_current(@hdc, @hrc) unless deferred
      return ctx unless block_given?
      yield
      if deferred then ctx.apply else self.class.unbind end

      self
    end

    def self.unbind
      GL.make_current(nil, nil)
    end

    def new_texture2d(*args)
      Texture2d.new(self, *args)
    end

    def load_extensions(*names)

    end

    private
    def self.init_pixel_format
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
    end
  end
end