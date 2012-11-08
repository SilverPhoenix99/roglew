module Roglew
  module GL
    INVALID_FRAMEBUFFER_OPERATION_EXT                = 0x0506 unless const_defined? :INVALID_FRAMEBUFFER_OPERATION_EXT
    MAX_RENDERBUFFER_SIZE_EXT                        = 0x84E8 unless const_defined? :MAX_RENDERBUFFER_SIZE_EXT
    FRAMEBUFFER_BINDING_EXT                          = 0x8CA6 unless const_defined? :FRAMEBUFFER_BINDING_EXT
    RENDERBUFFER_BINDING_EXT                         = 0x8CA7 unless const_defined? :RENDERBUFFER_BINDING_EXT
    FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT           = 0x8CD0 unless const_defined? :FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT
    FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT           = 0x8CD1 unless const_defined? :FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT         = 0x8CD2 unless const_defined? :FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT
    FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT = 0x8CD3 unless const_defined? :FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT
    FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT    = 0x8CD4 unless const_defined? :FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT
    FRAMEBUFFER_COMPLETE_EXT                         = 0x8CD5 unless const_defined? :FRAMEBUFFER_COMPLETE_EXT
    FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT            = 0x8CD6 unless const_defined? :FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT
    FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT    = 0x8CD7 unless const_defined? :FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT
    FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT            = 0x8CD9 unless const_defined? :FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT
    FRAMEBUFFER_INCOMPLETE_FORMATS_EXT               = 0x8CDA unless const_defined? :FRAMEBUFFER_INCOMPLETE_FORMATS_EXT
    FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT           = 0x8CDB unless const_defined? :FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT
    FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT           = 0x8CDC unless const_defined? :FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT
    FRAMEBUFFER_UNSUPPORTED_EXT                      = 0x8CDD unless const_defined? :FRAMEBUFFER_UNSUPPORTED_EXT
    MAX_COLOR_ATTACHMENTS_EXT                        = 0x8CDF unless const_defined? :MAX_COLOR_ATTACHMENTS_EXT
    COLOR_ATTACHMENT0_EXT                            = 0x8CE0 unless const_defined? :COLOR_ATTACHMENT0_EXT
    COLOR_ATTACHMENT1_EXT                            = 0x8CE1 unless const_defined? :COLOR_ATTACHMENT1_EXT
    COLOR_ATTACHMENT2_EXT                            = 0x8CE2 unless const_defined? :COLOR_ATTACHMENT2_EXT
    COLOR_ATTACHMENT3_EXT                            = 0x8CE3 unless const_defined? :COLOR_ATTACHMENT3_EXT
    COLOR_ATTACHMENT4_EXT                            = 0x8CE4 unless const_defined? :COLOR_ATTACHMENT4_EXT
    COLOR_ATTACHMENT5_EXT                            = 0x8CE5 unless const_defined? :COLOR_ATTACHMENT5_EXT
    COLOR_ATTACHMENT6_EXT                            = 0x8CE6 unless const_defined? :COLOR_ATTACHMENT6_EXT
    COLOR_ATTACHMENT7_EXT                            = 0x8CE7 unless const_defined? :COLOR_ATTACHMENT7_EXT
    COLOR_ATTACHMENT8_EXT                            = 0x8CE8 unless const_defined? :COLOR_ATTACHMENT8_EXT
    COLOR_ATTACHMENT9_EXT                            = 0x8CE9 unless const_defined? :COLOR_ATTACHMENT9_EXT
    COLOR_ATTACHMENT10_EXT                           = 0x8CEA unless const_defined? :COLOR_ATTACHMENT10_EXT
    COLOR_ATTACHMENT11_EXT                           = 0x8CEB unless const_defined? :COLOR_ATTACHMENT11_EXT
    COLOR_ATTACHMENT12_EXT                           = 0x8CEC unless const_defined? :COLOR_ATTACHMENT12_EXT
    COLOR_ATTACHMENT13_EXT                           = 0x8CED unless const_defined? :COLOR_ATTACHMENT13_EXT
    COLOR_ATTACHMENT14_EXT                           = 0x8CEE unless const_defined? :COLOR_ATTACHMENT14_EXT
    COLOR_ATTACHMENT15_EXT                           = 0x8CEF unless const_defined? :COLOR_ATTACHMENT15_EXT
    DEPTH_ATTACHMENT_EXT                             = 0x8D00 unless const_defined? :DEPTH_ATTACHMENT_EXT
    STENCIL_ATTACHMENT_EXT                           = 0x8D20 unless const_defined? :STENCIL_ATTACHMENT_EXT
    FRAMEBUFFER_EXT                                  = 0x8D40 unless const_defined? :FRAMEBUFFER_EXT
    RENDERBUFFER_EXT                                 = 0x8D41 unless const_defined? :RENDERBUFFER_EXT
    RENDERBUFFER_WIDTH_EXT                           = 0x8D42 unless const_defined? :RENDERBUFFER_WIDTH_EXT
    RENDERBUFFER_HEIGHT_EXT                          = 0x8D43 unless const_defined? :RENDERBUFFER_HEIGHT_EXT
    RENDERBUFFER_INTERNAL_FORMAT_EXT                 = 0x8D44 unless const_defined? :RENDERBUFFER_INTERNAL_FORMAT_EXT
    STENCIL_INDEX1_EXT                               = 0x8D46 unless const_defined? :STENCIL_INDEX1_EXT
    STENCIL_INDEX4_EXT                               = 0x8D47 unless const_defined? :STENCIL_INDEX4_EXT
    STENCIL_INDEX8_EXT                               = 0x8D48 unless const_defined? :STENCIL_INDEX8_EXT
    STENCIL_INDEX16_EXT                              = 0x8D49 unless const_defined? :STENCIL_INDEX16_EXT
    RENDERBUFFER_RED_SIZE_EXT                        = 0x8D50 unless const_defined? :RENDERBUFFER_RED_SIZE_EXT
    RENDERBUFFER_GREEN_SIZE_EXT                      = 0x8D51 unless const_defined? :RENDERBUFFER_GREEN_SIZE_EXT
    RENDERBUFFER_BLUE_SIZE_EXT                       = 0x8D52 unless const_defined? :RENDERBUFFER_BLUE_SIZE_EXT
    RENDERBUFFER_ALPHA_SIZE_EXT                      = 0x8D53 unless const_defined? :RENDERBUFFER_ALPHA_SIZE_EXT
    RENDERBUFFER_DEPTH_SIZE_EXT                      = 0x8D54 unless const_defined? :RENDERBUFFER_DEPTH_SIZE_EXT
    RENDERBUFFER_STENCIL_SIZE_EXT                    = 0x8D55 unless const_defined? :RENDERBUFFER_STENCIL_SIZE_EXT
  end

  class TextureContext
    def generate_mipmapEXT
      make_call(:glGenerateMipmapEXT, @target)
    end
  end
end

module GL_EXT_framebuffer_object
  module RenderContext
    include Roglew::GLExtension
    include Roglew::GLObject

    functions [:glBindFramebufferEXT, [ :uint, :uint ], :void],
              [:glBindRenderbufferEXT, [ :uint, :uint ], :void],
              [:glCheckFramebufferStatusEXT, [ :uint ], :uint],
              [:glDeleteFramebuffersEXT, [ :int, :pointer ], :void],
              [:glDeleteRenderbuffersEXT, [ :int, :pointer ], :void],
              [:glFramebufferRenderbufferEXT, [ :uint, :uint, :uint, :uint ], :void],
              [:glFramebufferTexture1DEXT, [ :uint, :uint, :uint, :uint, :int ], :void],
              [:glFramebufferTexture2DEXT, [ :uint, :uint, :uint, :uint, :int ], :void],
              [:glFramebufferTexture3DEXT, [ :uint, :uint, :uint, :uint, :int, :int ], :void],
              [:glGenerateMipmapEXT, [ :uint ], :void],
              [:glGenFramebuffersEXT, [ :int, :pointer ], :void],
              [:glGenRenderbuffersEXT, [ :int, :pointer ], :void],
              [:glGetFramebufferAttachmentParameterivEXT, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetRenderbufferParameterivEXT, [ :uint, :uint, :pointer ], :void],
              [:glIsFramebufferEXT, [ :uint ], :uchar],
              [:glIsRenderbufferEXT, [ :uint ], :uchar],
              [:glRenderbufferStorageEXT, [ :uint, :uint, :int, :int ], :void]

    def create_framebufferEXT(*args)
      Roglew::FramebufferEXT.new(self, *args)
    end

    def create_renderbufferEXT(*args)
      Roglew::RenderbufferEXT.new(self, *args)
    end

    [
      #void glGetFramebufferAttachmentParameterivEXT(enum target, enum attachment, enum pname, int *params);
      [:framebuffer_attachment_parameterEXT, :glGetFramebufferAttachmentParameterivEXT],
      #void glGetRenderbufferParameterivEXT(enum target, enum pname, int *params);
      [:renderbuffer_parameterEXT, :glGetRenderbufferParameterivEXT],
    ].each do |method_name, function_name|
      #call without pointer parameter (int *params)
      define_method(method_name) do |*args|
        ptr = FFI::MemoryPointer.new(:int)
        public_send(function_name, *(args << ptr))
        ptr.read_int
      end
    end

    [
      #void glGenFramebuffersEXT(GLsizei n, GLuint* framebuffers)
      #void glDeleteFramebuffersEXT(GLsizei n, const GLuint* framebuffers)
      [:framebuffersEXT, :glGenFramebuffersEXT, :glDeleteFramebuffersEXT],

      #void glGenRenderbuffersEXT(GLsizei n, GLuint* renderbuffers)
      #void glDeleteRenderbuffers(GLsizei n, const GLuint* renderbuffers)
      [:renderbuffersEXT, :glGenRenderbuffersEXT, :glDeleteRenderbuffersEXT],
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