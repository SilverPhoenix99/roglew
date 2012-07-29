module Roglew
  module BaseTextureContext
    def texture; @obj end

    {
      :min_filter   => GL::TEXTURE_MIN_FILTER,
      :mag_filter   => GL::TEXTURE_MAG_FILTER,
      :min_lod      => GL::TEXTURE_MIN_LOD,
      :max_lod      => GL::TEXTURE_MAX_LOD,
      :base_level   => GL::TEXTURE_BASE_LEVEL,
      :max_level    => GL::TEXTURE_MAX_LEVEL,
      :wrap_s       => GL::TEXTURE_WRAP_S,
      :wrap_t       => GL::TEXTURE_WRAP_T,
      :wrap_r       => GL::TEXTURE_WRAP_R,
      :priority     => GL::TEXTURE_PRIORITY,
      :compare_mode => GL::TEXTURE_COMPARE_MODE,
      :compare_func => GL::TEXTURE_COMPARE_FUNC,
      :depth_mode   => GL::DEPTH_TEXTURE_MODE,
      :mipmap       => GL::GENERATE_MIPMAP
    }.each do |name, cnst|
      define_method "#{name}=", ->(v) { make_call(GL, :tex_parameter, GL::TEXTURE_2D, cnst, v) }
    end

    def border_color(r, g, b, a)
      make_call(GL, :tex_parameter, GL::TEXTURE_2D, GL::TEXTURE_BORDER_COLOR, r, g, b, a)
    end

    def tex_image_2d(width, height, border, internalFormat, format, type, data)
      make_call(GL, :tex_image_2d, GL::TEXTURE_2D, 0, internalFormat, width, height, border, format, type, data)
    end
  end

  class DeferredTextureContext
    include Roglew::DeferredContext(BaseTextureContext, :bind_texture, GL::TEXTURE_2D)
  end

  class ImmediateTextureContext
    include Roglew::ImmediateContext(BaseTextureContext)
  end
end