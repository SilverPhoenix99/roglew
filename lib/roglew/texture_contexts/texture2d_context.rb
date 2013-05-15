module Roglew
  class Texture2dContext
    include Roglew::BaseContext(:texture)

    attr_accessor :level

    make_calls :tex_parameter,
               :glTexImage2D,
               :glTexSubImage2D

    def initialize(texture, deferred, target, level, &block)
      @target, @level = target, level
      super(texture, deferred, &block)

      version = context.version
      version = version[0] * 10 + version[1]
      singleton_class.send(:include, Parameters1) if version >= 11 && version <= 30
      singleton_class.send(:include, Parameters2) if version >= 12
      singleton_class.send(:include, Parameters3) if version >= 14 && version <= 30
      singleton_class.send(:include, Parameters4) if version >= 14
      singleton_class.send(:include, Parameters5) if version >= 33
      singleton_class.send(:include, Parameters6) if version >= 43
    end

    def tex_image_2d(width, height, internalFormat, format, type, data = nil)
      glTexImage2D(@target, @level, internalFormat, width, height, 0, format, type, data)
    end

    def tex_subimage_2d(x, y, width, height, format, type, data = nil)
      glTexSubImage2D(@target, @level, x, y, width, height, format, type, data)
    end

    def border_color(r, g, b, a) tex_parameter(@target, GL::TEXTURE_BORDER_COLOR, r, g, b, a) end
    def mag_filter=(v) text_parameter(@target, GL::TEXTURE_MAG_FILTER, v) end
    def min_filter=(v) text_parameter(@target, GL::TEXTURE_MIN_FILTER, v) end
    def wrap_s=(v) text_parameter(@target, GL::TEXTURE_WRAP_S, v) end
    def wrap_t=(v) text_parameter(@target, GL::TEXTURE_WRAP_T, v) end

    module Parameters1
      def priority(v) tex_parameter(@target, GL::TEXTURE_PRIORITY, v) end
    end

    module Parameters2
      def base_level=(v) text_parameter(@target, GL::TEXTURE_BASE_LEVEL, v) end
      def max_level=(v) text_parameter(@target, GL::TEXTURE_MAX_LEVEL, v) end
      def max_lod=(v) text_parameter(@target, GL::TEXTURE_MAX_LOD, v) end
      def min_lod=(v) text_parameter(@target, GL::TEXTURE_MIN_LOD, v) end
      def wrap_r=(v) text_parameter(@target, GL::TEXTURE_WRAP_R, v) end
      def wrap_str(s, t, r) self.wrap_s, self.wrap_t, self.wrap_r = s, t, r end

      def no_mipmaps!
        self.mag_filter = Roglew::GL::NEAREST
        self.min_filter = Roglew::GL::NEAREST
        self.base_level = 0
        self.max_level  = 0
        nil
      end
    end

    module Parameters3
      def depth_mode=(v) text_parameter(@target, GL::DEPTH_TEXTURE_MODE, v) end

      def generate_mipmap=(v)
        v = v ? GL::TRUE : GL::FALSE if v == true || v == false
        text_parameter(@texture, GL::GENERATE_MIPMAP, v)
      end
    end

    module Parameters4
      def compare_mode=(v) text_parameter(@target, GL::TEXTURE_COMPARE_MODE, v) end
      def compare_func=(v) text_parameter(@target, GL::TEXTURE_COMPARE_FUNC, v) end
      def lod_bias=(v) text_parameter(@target, GL::TEXTURE_LOD_BIAS, v) end
    end

    module Parameters5
      def swizzle_r=(v) text_parameter(@target, GL::SWIZZLE_R, v) end
      def swizzle_g=(v) text_parameter(@target, GL::SWIZZLE_G, v) end
      def swizzle_b=(v) text_parameter(@target, GL::SWIZZLE_B, v) end
      def swizzle_a=(v) text_parameter(@target, GL::SWIZZLE_A, v) end
      def swizzle_rgba(r, g, b, a) text_parameter(@target, GL::SWIZZLE_RGBA, r, g, b, a) end
    end

    module Parameters6
      def depth_stencil_mode=(v) text_parameter(@target, GL::DEPTH_STENCIL_TEXTURE_MODE, v) end
    end

    private
    def bind
      context.glBindTexture(@target, texture.id)
    end

    def unbind
      context.glBindTexture(@target, 0)
    end
  end
end