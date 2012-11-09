module Roglew
  module GL
    INVALID_FRAMEBUFFER_OPERATION_EXT                ||= 0x0506
    MAX_RENDERBUFFER_SIZE_EXT                        ||= 0x84E8
    FRAMEBUFFER_BINDING_EXT                          ||= 0x8CA6
    RENDERBUFFER_BINDING_EXT                         ||= 0x8CA7
    FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT           ||= 0x8CD0
    FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT           ||= 0x8CD1
    FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT         ||= 0x8CD2
    FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT ||= 0x8CD3
    FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT    ||= 0x8CD4
    FRAMEBUFFER_COMPLETE_EXT                         ||= 0x8CD5
    FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT            ||= 0x8CD6
    FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT    ||= 0x8CD7
    FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT            ||= 0x8CD9
    FRAMEBUFFER_INCOMPLETE_FORMATS_EXT               ||= 0x8CDA
    FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT           ||= 0x8CDB
    FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT           ||= 0x8CDC
    FRAMEBUFFER_UNSUPPORTED_EXT                      ||= 0x8CDD
    MAX_COLOR_ATTACHMENTS_EXT                        ||= 0x8CDF
    COLOR_ATTACHMENT0_EXT                            ||= 0x8CE0
    COLOR_ATTACHMENT1_EXT                            ||= 0x8CE1
    COLOR_ATTACHMENT2_EXT                            ||= 0x8CE2
    COLOR_ATTACHMENT3_EXT                            ||= 0x8CE3
    COLOR_ATTACHMENT4_EXT                            ||= 0x8CE4
    COLOR_ATTACHMENT5_EXT                            ||= 0x8CE5
    COLOR_ATTACHMENT6_EXT                            ||= 0x8CE6
    COLOR_ATTACHMENT7_EXT                            ||= 0x8CE7
    COLOR_ATTACHMENT8_EXT                            ||= 0x8CE8
    COLOR_ATTACHMENT9_EXT                            ||= 0x8CE9
    COLOR_ATTACHMENT10_EXT                           ||= 0x8CEA
    COLOR_ATTACHMENT11_EXT                           ||= 0x8CEB
    COLOR_ATTACHMENT12_EXT                           ||= 0x8CEC
    COLOR_ATTACHMENT13_EXT                           ||= 0x8CED
    COLOR_ATTACHMENT14_EXT                           ||= 0x8CEE
    COLOR_ATTACHMENT15_EXT                           ||= 0x8CEF
    DEPTH_ATTACHMENT_EXT                             ||= 0x8D00
    STENCIL_ATTACHMENT_EXT                           ||= 0x8D20
    FRAMEBUFFER_EXT                                  ||= 0x8D40
    RENDERBUFFER_EXT                                 ||= 0x8D41
    RENDERBUFFER_WIDTH_EXT                           ||= 0x8D42
    RENDERBUFFER_HEIGHT_EXT                          ||= 0x8D43
    RENDERBUFFER_INTERNAL_FORMAT_EXT                 ||= 0x8D44
    STENCIL_INDEX1_EXT                               ||= 0x8D46
    STENCIL_INDEX4_EXT                               ||= 0x8D47
    STENCIL_INDEX8_EXT                               ||= 0x8D48
    STENCIL_INDEX16_EXT                              ||= 0x8D49
    RENDERBUFFER_RED_SIZE_EXT                        ||= 0x8D50
    RENDERBUFFER_GREEN_SIZE_EXT                      ||= 0x8D51
    RENDERBUFFER_BLUE_SIZE_EXT                       ||= 0x8D52
    RENDERBUFFER_ALPHA_SIZE_EXT                      ||= 0x8D53
    RENDERBUFFER_DEPTH_SIZE_EXT                      ||= 0x8D54
    RENDERBUFFER_STENCIL_SIZE_EXT                    ||= 0x8D55
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