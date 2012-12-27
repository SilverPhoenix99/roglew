module Roglew
  class TextureContext
    include Roglew::BaseContext(:texture)

    attr_accessor :level

    def initialize(texture, deferred, target, level, &block)
      @target, @level = target, level
      super(texture, deferred, &block)
    end

    {
      :min_filter   => :TEXTURE_MIN_FILTER,
      :mag_filter   => :TEXTURE_MAG_FILTER,
      :min_lod      => :TEXTURE_MIN_LOD,
      :max_lod      => :TEXTURE_MAX_LOD,
      :base_level   => :TEXTURE_BASE_LEVEL,
      :max_level    => :TEXTURE_MAX_LEVEL,
      :wrap_s       => :TEXTURE_WRAP_S,
      :wrap_t       => :TEXTURE_WRAP_T,
      :wrap_r       => :TEXTURE_WRAP_R,
      :priority     => :TEXTURE_PRIORITY,
      :compare_mode => :TEXTURE_COMPARE_MODE,
      :compare_func => :TEXTURE_COMPARE_FUNC,
      :depth_mode   => :DEPTH_TEXTURE_MODE,
      :mipmap       => :GENERATE_MIPMAP
    }.each do |name, cnst|
      class_eval "def #{name}=(v) make_call(:tex_parameter, @target, GL::#{cnst}, v) end"
    end

    def border_color(r, g, b, a)
      make_call(:tex_parameter, @target, GL::TEXTURE_BORDER_COLOR, r, g, b, a)
    end

    def tex_image_2d(width, height, internalFormat, format, type, data = nil)
      make_call(:glTexImage2D, @target, @level, internalFormat, width, height, 0, format, type, data)
    end

    def tex_subimage_2d(x, y, width, height, format, type, data = nil)
      make_call(:glTexSubImage2D, @target, @level, x, y, width, height, format, type, data)
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