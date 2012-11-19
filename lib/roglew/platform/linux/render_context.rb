module Roglew
  class RenderContext
    #if version not passed, builds context with latest version
    def initialize(dpy, screen, window, version = nil)
      @dpy, @window = dpy, window

      major, minor = FFI::MemoryPointer.new(:int), FFI::MemoryPointer.new(:int)
      glXQueryVersion(@dpy, major, minor)
      puts "GLX Version #{[major.read_int, minor.read_int].join('.')}"

      attrList = FFI::MemoryPointer.new(:int, 11)
      attrList.write_array_of_int([
                                    Roglew::GLX::RGBA,       Roglew::GLX::DOUBLEBUFFER,
                                    Roglew::GLX::RED_SIZE,   4,
                                    Roglew::GLX::GREEN_SIZE, 4,
                                    Roglew::GLX::BLUE_SIZE,  4,
                                    Roglew::GLX::DEPTH_SIZE, 16
                                  ])
      @visual = glXChooseVisual(@dpy, screen, attrList)
      @context = glXCreateContext(@dpy, @visual, nil, true)

      self.class.finalize(self, @dpy, @context)
    end

    def get_proc_address(name)
      func = begin
        GLX.attach_function :glXGetProcAddress, [:string], :pointer
      rescue FFI::NotFoundError
        GLX.attach_function :glXGetProcAddressARB, [:string], :pointer
      end
      define_singleton_method(:get_proc_address, ->(n) { func.(n) })
      send(:get_proc_address, name)
    end
  end

  def swap_buffers
    #TODO
    raise NotImplementedError
  end

  def extension_list_platform
    #TODO
    raise NotImplementedError
  end

  def make_current
    glXMakeCurrent(@dpy, @window, @context)
  end
end