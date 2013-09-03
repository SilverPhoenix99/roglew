module Roglew
  class Texture2dContext
    include Roglew::BaseContext(:texture)

    attr_accessor :level

    make_calls :handle, :glTexImage2D, :glTexSubImage2D
    make_calls :context, :tex_parameter

    def initialize(texture, deferred, target, level, &block)
      @target, @level = target, level

      load_version_modules texture.handle.version
      load_extensions texture.handle.loaded_extensions

      super(texture, deferred, &block)
    end

    def parameter(pname, *values)
      tex_parameter(@target, pname, *values)
    end

    def tex_image_2d(width, height, internalFormat, format, type, data = nil)
      glTexImage2D(@target, @level, internalFormat, width, height, 0, format, type, data)
    end

    def tex_subimage_2d(x, y, width, height, format, type, data = nil)
      glTexSubImage2D(@target, @level, x, y, width, height, format, type, data)
    end

    def border_color(r, g, b, a) parameter(GL::TEXTURE_BORDER_COLOR, r, g, b, a) end
    def mag_filter=(v) parameter(GL::TEXTURE_MAG_FILTER, v) end
    def min_filter=(v) parameter(GL::TEXTURE_MIN_FILTER, v) end
    def wrap_s=(v) parameter(GL::TEXTURE_WRAP_S, v) end
    def wrap_t=(v) parameter(GL::TEXTURE_WRAP_T, v) end

    module Parameters1
      def priority(v) parameter(GL::TEXTURE_PRIORITY, v) end
    end

    module Parameters2
      def base_level=(v) parameter(GL::TEXTURE_BASE_LEVEL, v) end
      def max_level=(v) parameter(GL::TEXTURE_MAX_LEVEL, v) end
      def max_lod=(v) parameter(GL::TEXTURE_MAX_LOD, v) end
      def min_lod=(v) parameter(GL::TEXTURE_MIN_LOD, v) end
      def wrap_r=(v) parameter(GL::TEXTURE_WRAP_R, v) end
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
      def depth_mode=(v) parameter(GL::DEPTH_TEXTURE_MODE, v) end

      def generate_mipmap=(v)
        v = v ? GL::TRUE : GL::FALSE if v == true || v == false
        parameter(GL::GENERATE_MIPMAP, v)
      end
    end

    module Parameters4
      def compare_mode=(v) parameter(GL::TEXTURE_COMPARE_MODE, v) end
      def compare_func=(v) parameter(GL::TEXTURE_COMPARE_FUNC, v) end
      def lod_bias=(v) parameter(GL::TEXTURE_LOD_BIAS, v) end
    end

    module Parameters5
      def swizzle_r=(v) parameter(GL::SWIZZLE_R, v) end
      def swizzle_g=(v) parameter(GL::SWIZZLE_G, v) end
      def swizzle_b=(v) parameter(GL::SWIZZLE_B, v) end
      def swizzle_a=(v) parameter(GL::SWIZZLE_A, v) end
      def swizzle_rgba(r, g, b, a) parameter(GL::SWIZZLE_RGBA, r, g, b, a) end
    end

    module Parameters6
      def depth_stencil_mode=(v) parameter(GL::DEPTH_STENCIL_TEXTURE_MODE, v) end
    end

    private

    def bind
      handle.glBindTexture(@target, texture.id)
    end

    def check_current
      raise RenderContextError unless handle.current?
    end

    def load_extensions(extensions)
      c = singleton_class
      extensions.each do |ext|
        next unless Object.const_defined?(ext)
        mod = Object.const_get(ext)
        next unless mod.const_defined?(:Texture2dContext)
        c.send(:include, mod.const_get(:Texture2dContext))
      end
    end

    def load_version_modules(version)
      version = version[0] * 10 + version[1]
      [
        version >= 11 && version <= 30, #1
        version >= 12,                  #2
        version >= 14 && version <= 30, #3
        version >= 14,                  #4
        version >= 33,                  #5
        version >= 43                   #6
      ].each_with_index
        .select { |cond, _| cond }
        .map { |_, index| self.class.const_get("Parameters#{index+1}") }
        .each { |mod| singleton_class.send(:include, mod) }
    end

    def unbind
      handle.glBindTexture(@target, 0)
    end
  end
end