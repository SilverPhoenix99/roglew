module Roglew
  module GL
    COLOR_ATTACHMENT0                            ||= 0x8CE0
    COLOR_ATTACHMENT1                            ||= 0x8CE1
    COLOR_ATTACHMENT10                           ||= 0x8CEA
    COLOR_ATTACHMENT11                           ||= 0x8CEB
    COLOR_ATTACHMENT12                           ||= 0x8CEC
    COLOR_ATTACHMENT13                           ||= 0x8CED
    COLOR_ATTACHMENT14                           ||= 0x8CEE
    COLOR_ATTACHMENT15                           ||= 0x8CEF
    COLOR_ATTACHMENT2                            ||= 0x8CE2
    COLOR_ATTACHMENT3                            ||= 0x8CE3
    COLOR_ATTACHMENT4                            ||= 0x8CE4
    COLOR_ATTACHMENT5                            ||= 0x8CE5
    COLOR_ATTACHMENT6                            ||= 0x8CE6
    COLOR_ATTACHMENT7                            ||= 0x8CE7
    COLOR_ATTACHMENT8                            ||= 0x8CE8
    COLOR_ATTACHMENT9                            ||= 0x8CE9
    DEPTH_ATTACHMENT                             ||= 0x8D00
    DEPTH_STENCIL                                ||= 0x84F9
    DEPTH_STENCIL_ATTACHMENT                     ||= 0x821A
    DEPTH24_STENCIL8                             ||= 0x88F0
    DRAW_FRAMEBUFFER                             ||= 0x8CA9
    DRAW_FRAMEBUFFER_BINDING                     ||= 0x8CA6
    FRAMEBUFFER                                  ||= 0x8D40
    FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE            ||= 0x8215
    FRAMEBUFFER_ATTACHMENT_BLUE_SIZE             ||= 0x8214
    FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING        ||= 0x8210
    FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE        ||= 0x8211
    FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE            ||= 0x8216
    FRAMEBUFFER_ATTACHMENT_GREEN_SIZE            ||= 0x8213
    FRAMEBUFFER_ATTACHMENT_OBJECT_NAME           ||= 0x8CD1
    FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE           ||= 0x8CD0
    FRAMEBUFFER_ATTACHMENT_RED_SIZE              ||= 0x8212
    FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE          ||= 0x8217
    FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE ||= 0x8CD3
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER         ||= 0x8CD4
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL         ||= 0x8CD2
    FRAMEBUFFER_BINDING                          ||= 0x8CA6
    FRAMEBUFFER_COMPLETE                         ||= 0x8CD5
    FRAMEBUFFER_DEFAULT                          ||= 0x8218
    FRAMEBUFFER_INCOMPLETE_ATTACHMENT            ||= 0x8CD6
    FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER           ||= 0x8CDB
    FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT    ||= 0x8CD7
    FRAMEBUFFER_INCOMPLETE_MULTISAMPLE           ||= 0x8D56
    FRAMEBUFFER_INCOMPLETE_READ_BUFFER           ||= 0x8CDC
    FRAMEBUFFER_UNDEFINED                        ||= 0x8219
    FRAMEBUFFER_UNSUPPORTED                      ||= 0x8CDD
    INDEX                                        ||= 0x8222
    INVALID_FRAMEBUFFER_OPERATION                ||= 0x0506
    MAX_COLOR_ATTACHMENTS                        ||= 0x8CDF
    MAX_RENDERBUFFER_SIZE                        ||= 0x84E8
    MAX_SAMPLES                                  ||= 0x8D57
    READ_FRAMEBUFFER                             ||= 0x8CA8
    READ_FRAMEBUFFER_BINDING                     ||= 0x8CAA
    RENDERBUFFER                                 ||= 0x8D41
    RENDERBUFFER_ALPHA_SIZE                      ||= 0x8D53
    RENDERBUFFER_BINDING                         ||= 0x8CA7
    RENDERBUFFER_BLUE_SIZE                       ||= 0x8D52
    RENDERBUFFER_DEPTH_SIZE                      ||= 0x8D54
    RENDERBUFFER_GREEN_SIZE                      ||= 0x8D51
    RENDERBUFFER_HEIGHT                          ||= 0x8D43
    RENDERBUFFER_INTERNAL_FORMAT                 ||= 0x8D44
    RENDERBUFFER_RED_SIZE                        ||= 0x8D50
    RENDERBUFFER_SAMPLES                         ||= 0x8CAB
    RENDERBUFFER_STENCIL_SIZE                    ||= 0x8D55
    RENDERBUFFER_WIDTH                           ||= 0x8D42
    SRGB                                         ||= 0x8C40
    STENCIL_ATTACHMENT                           ||= 0x8D20
    STENCIL_INDEX1                               ||= 0x8D46
    STENCIL_INDEX16                              ||= 0x8D49
    STENCIL_INDEX4                               ||= 0x8D47
    STENCIL_INDEX8                               ||= 0x8D48
    TEXTURE_STENCIL_SIZE                         ||= 0x88F1
    UNSIGNED_INT_24_8                            ||= 0x84FA
    UNSIGNED_NORMALIZED                          ||= 0x8C17
  end

  class TextureContext
    def generate_mipmap
      make_call(:glGenerateMipmap, @target)
    end
  end
end

module GL_ARB_framebuffer_object
  module RenderContext
    include Roglew::GLExtension
    include Roglew::GLObject

    functions [:glBindFramebuffer, [ :uint, :uint ], :void],
              [:glBindRenderbuffer, [ :uint, :uint ], :void],
              [:glBlitFramebuffer, [ :int, :int, :int, :int, :int, :int, :int, :int, :uint, :uint ], :void],
              [:glCheckFramebufferStatus, [ :uint ], :uint],
              [:glDeleteFramebuffers, [ :int, :pointer ], :void],
              [:glDeleteRenderbuffers, [ :int, :pointer ], :void],
              [:glFramebufferRenderbuffer, [ :uint, :uint, :uint, :uint ], :void],
              [:glFramebufferTexture1D, [ :uint, :uint, :uint, :uint, :int ], :void],
              [:glFramebufferTexture2D, [ :uint, :uint, :uint, :uint, :int ], :void],
              [:glFramebufferTexture3D, [ :uint, :uint, :uint, :uint, :int, :int ], :void],
              [:glFramebufferTextureLayer, [ :uint, :uint, :uint, :int, :int ], :void],
              [:glGenerateMipmap, [ :uint ], :void],
              [:glGenFramebuffers, [ :int, :pointer ], :void],
              [:glGenRenderbuffers, [ :int, :pointer ], :void],
              [:glGetFramebufferAttachmentParameteriv, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetRenderbufferParameteriv, [ :uint, :uint, :pointer ], :void],
              [:glIsFramebuffer, [ :uint ], :uchar],
              [:glIsRenderbuffer, [ :uint ], :uchar],
              [:glRenderbufferStorage, [ :uint, :uint, :int, :int ], :void],
              [:glRenderbufferStorageMultisample, [ :uint, :int, :uint, :int, :int ], :void]

    def create_framebuffer(*args)
      Roglew::FramebufferARB.new(self, *args)
    end

    def create_renderbuffer(*args)
      Roglew::RenderbufferARB.new(self, *args)
    end

    [
      #void glGetFramebufferAttachmentParameteriv(enum target, enum attachment, enum pname, int *params);
      [:framebuffer_attachment_parameter, :glGetFramebufferAttachmentParameteriv],
      #void glGetRenderbufferParameteriv(enum target, enum pname, int *params);
      [:renderbuffer_parameter, :glGetRenderbufferParameteriv],
    ].each do |method_name, function_name|
      #call without pointer parameter (int *params)
      define_method(method_name) do |*args|
        ptr = FFI::MemoryPointer.new(:int)
        public_send(function_name, *(args << ptr))
        ptr.read_int
      end
    end

    [
      #void glGenFramebuffers(GLsizei n, GLuint* framebuffers)
      #void glDeleteFramebuffers(GLsizei n, const GLuint* framebuffers)
      :Framebuffers,

      #void glGenRenderbuffers(GLsizei n, GLuint* renderbuffers)
      #void glDeleteRenderbuffers(GLsizei n, const GLuint* renderbuffers)
      :Renderbuffers
    ].each do |name|
      def_object name
    end
  end
end

%w'renderbuffer_context
renderbuffer
framebuffer_context
framebuffer
'.each { |f| require "#{File.expand_path(__FILE__)[0..-4]}/#{f}" }