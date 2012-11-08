module Roglew
  module GL
    COLOR_ATTACHMENT0                            = 0x8CE0 unless const_defined? :COLOR_ATTACHMENT0
    COLOR_ATTACHMENT1                            = 0x8CE1 unless const_defined? :COLOR_ATTACHMENT1
    COLOR_ATTACHMENT10                           = 0x8CEA unless const_defined? :COLOR_ATTACHMENT10
    COLOR_ATTACHMENT11                           = 0x8CEB unless const_defined? :COLOR_ATTACHMENT11
    COLOR_ATTACHMENT12                           = 0x8CEC unless const_defined? :COLOR_ATTACHMENT12
    COLOR_ATTACHMENT13                           = 0x8CED unless const_defined? :COLOR_ATTACHMENT13
    COLOR_ATTACHMENT14                           = 0x8CEE unless const_defined? :COLOR_ATTACHMENT14
    COLOR_ATTACHMENT15                           = 0x8CEF unless const_defined? :COLOR_ATTACHMENT15
    COLOR_ATTACHMENT2                            = 0x8CE2 unless const_defined? :COLOR_ATTACHMENT2
    COLOR_ATTACHMENT3                            = 0x8CE3 unless const_defined? :COLOR_ATTACHMENT3
    COLOR_ATTACHMENT4                            = 0x8CE4 unless const_defined? :COLOR_ATTACHMENT4
    COLOR_ATTACHMENT5                            = 0x8CE5 unless const_defined? :COLOR_ATTACHMENT5
    COLOR_ATTACHMENT6                            = 0x8CE6 unless const_defined? :COLOR_ATTACHMENT6
    COLOR_ATTACHMENT7                            = 0x8CE7 unless const_defined? :COLOR_ATTACHMENT7
    COLOR_ATTACHMENT8                            = 0x8CE8 unless const_defined? :COLOR_ATTACHMENT8
    COLOR_ATTACHMENT9                            = 0x8CE9 unless const_defined? :COLOR_ATTACHMENT9
    DEPTH_ATTACHMENT                             = 0x8D00 unless const_defined? :DEPTH_ATTACHMENT
    DEPTH_STENCIL                                = 0x84F9 unless const_defined? :DEPTH_STENCIL
    DEPTH_STENCIL_ATTACHMENT                     = 0x821A unless const_defined? :DEPTH_STENCIL_ATTACHMENT
    DEPTH24_STENCIL8                             = 0x88F0 unless const_defined? :DEPTH24_STENCIL8
    DRAW_FRAMEBUFFER                             = 0x8CA9 unless const_defined? :DRAW_FRAMEBUFFER
    DRAW_FRAMEBUFFER_BINDING                     = 0x8CA6 unless const_defined? :DRAW_FRAMEBUFFER_BINDING
    FRAMEBUFFER                                  = 0x8D40 unless const_defined? :FRAMEBUFFER
    FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE            = 0x8215 unless const_defined? :FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE
    FRAMEBUFFER_ATTACHMENT_BLUE_SIZE             = 0x8214 unless const_defined? :FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
    FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING        = 0x8210 unless const_defined? :FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING
    FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE        = 0x8211 unless const_defined? :FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE
    FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE            = 0x8216 unless const_defined? :FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE
    FRAMEBUFFER_ATTACHMENT_GREEN_SIZE            = 0x8213 unless const_defined? :FRAMEBUFFER_ATTACHMENT_GREEN_SIZE
    FRAMEBUFFER_ATTACHMENT_OBJECT_NAME           = 0x8CD1 unless const_defined? :FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
    FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE           = 0x8CD0 unless const_defined? :FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
    FRAMEBUFFER_ATTACHMENT_RED_SIZE              = 0x8212 unless const_defined? :FRAMEBUFFER_ATTACHMENT_RED_SIZE
    FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE          = 0x8217 unless const_defined? :FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE
    FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3 unless const_defined? :FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER         = 0x8CD4 unless const_defined? :FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL         = 0x8CD2 unless const_defined? :FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
    FRAMEBUFFER_BINDING                          = 0x8CA6 unless const_defined? :FRAMEBUFFER_BINDING
    FRAMEBUFFER_COMPLETE                         = 0x8CD5 unless const_defined? :FRAMEBUFFER_COMPLETE
    FRAMEBUFFER_DEFAULT                          = 0x8218 unless const_defined? :FRAMEBUFFER_DEFAULT
    FRAMEBUFFER_INCOMPLETE_ATTACHMENT            = 0x8CD6 unless const_defined? :FRAMEBUFFER_INCOMPLETE_ATTACHMENT
    FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER           = 0x8CDB unless const_defined? :FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
    FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT    = 0x8CD7 unless const_defined? :FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
    FRAMEBUFFER_INCOMPLETE_MULTISAMPLE           = 0x8D56 unless const_defined? :FRAMEBUFFER_INCOMPLETE_MULTISAMPLE
    FRAMEBUFFER_INCOMPLETE_READ_BUFFER           = 0x8CDC unless const_defined? :FRAMEBUFFER_INCOMPLETE_READ_BUFFER
    FRAMEBUFFER_UNDEFINED                        = 0x8219 unless const_defined? :FRAMEBUFFER_UNDEFINED
    FRAMEBUFFER_UNSUPPORTED                      = 0x8CDD unless const_defined? :FRAMEBUFFER_UNSUPPORTED
    INDEX                                        = 0x8222 unless const_defined? :INDEX
    INVALID_FRAMEBUFFER_OPERATION                = 0x0506 unless const_defined? :INVALID_FRAMEBUFFER_OPERATION
    MAX_COLOR_ATTACHMENTS                        = 0x8CDF unless const_defined? :MAX_COLOR_ATTACHMENTS
    MAX_RENDERBUFFER_SIZE                        = 0x84E8 unless const_defined? :MAX_RENDERBUFFER_SIZE
    MAX_SAMPLES                                  = 0x8D57 unless const_defined? :MAX_SAMPLES
    READ_FRAMEBUFFER                             = 0x8CA8 unless const_defined? :READ_FRAMEBUFFER
    READ_FRAMEBUFFER_BINDING                     = 0x8CAA unless const_defined? :READ_FRAMEBUFFER_BINDING
    RENDERBUFFER                                 = 0x8D41 unless const_defined? :RENDERBUFFER
    RENDERBUFFER_ALPHA_SIZE                      = 0x8D53 unless const_defined? :RENDERBUFFER_ALPHA_SIZE
    RENDERBUFFER_BINDING                         = 0x8CA7 unless const_defined? :RENDERBUFFER_BINDING
    RENDERBUFFER_BLUE_SIZE                       = 0x8D52 unless const_defined? :RENDERBUFFER_BLUE_SIZE
    RENDERBUFFER_DEPTH_SIZE                      = 0x8D54 unless const_defined? :RENDERBUFFER_DEPTH_SIZE
    RENDERBUFFER_GREEN_SIZE                      = 0x8D51 unless const_defined? :RENDERBUFFER_GREEN_SIZE
    RENDERBUFFER_HEIGHT                          = 0x8D43 unless const_defined? :RENDERBUFFER_HEIGHT
    RENDERBUFFER_INTERNAL_FORMAT                 = 0x8D44 unless const_defined? :RENDERBUFFER_INTERNAL_FORMAT
    RENDERBUFFER_RED_SIZE                        = 0x8D50 unless const_defined? :RENDERBUFFER_RED_SIZE
    RENDERBUFFER_SAMPLES                         = 0x8CAB unless const_defined? :RENDERBUFFER_SAMPLES
    RENDERBUFFER_STENCIL_SIZE                    = 0x8D55 unless const_defined? :RENDERBUFFER_STENCIL_SIZE
    RENDERBUFFER_WIDTH                           = 0x8D42 unless const_defined? :RENDERBUFFER_WIDTH
    SRGB                                         = 0x8C40 unless const_defined? :SRGB
    STENCIL_ATTACHMENT                           = 0x8D20 unless const_defined? :STENCIL_ATTACHMENT
    STENCIL_INDEX1                               = 0x8D46 unless const_defined? :STENCIL_INDEX1
    STENCIL_INDEX16                              = 0x8D49 unless const_defined? :STENCIL_INDEX16
    STENCIL_INDEX4                               = 0x8D47 unless const_defined? :STENCIL_INDEX4
    STENCIL_INDEX8                               = 0x8D48 unless const_defined? :STENCIL_INDEX8
    TEXTURE_STENCIL_SIZE                         = 0x88F1 unless const_defined? :TEXTURE_STENCIL_SIZE
    UNSIGNED_INT_24_8                            = 0x84FA unless const_defined? :UNSIGNED_INT_24_8
    UNSIGNED_NORMALIZED                          = 0x8C17 unless const_defined? :UNSIGNED_NORMALIZED
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
      [:framebuffers, :glGenFramebuffers, :glDeleteFramebuffers],

      #void glGenRenderbuffers(GLsizei n, GLuint* renderbuffers)
      #void glDeleteRenderbuffers(GLsizei n, const GLuint* renderbuffers)
      [:renderbuffers, :glGenRenderbuffers, :glDeleteRenderbuffers],
    ].each do |method_name, gen_function_name, del_function_name|
      def_gen method_name, gen_function_name
      def_delete method_name, del_function_name
    end
  end
end

%w'renderbuffer_context
renderbuffer
framebuffer_context
framebuffer
'.each { |f| require "#{File.expand_path(__FILE__)[0..-4]}/#{f}" }