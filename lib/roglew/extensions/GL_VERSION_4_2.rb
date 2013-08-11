module Roglew
  module GL
    COMPRESSED_RGB_BPTC_SIGNED_FLOAT   ||= 0x8E8E
    COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT ||= 0x8E8F
    COMPRESSED_RGBA_BPTC_UNORM         ||= 0x8E8C
    COMPRESSED_SRGB_ALPHA_BPTC_UNORM   ||= 0x8E8D
  end
end

#GL_VERSION_4_2 implicitly requires:
#  GL_ARB_shading_language_packing
#  GL_ARB_shading_language_420pack
#  GL_ARB_conservative_depth
#  GL_ARB_base_instance
#  GL_ARB_compressed_texture_pixel_storage
#  GL_ARB_internalformat_query
#  GL_ARB_map_buffer_alignment
#  GL_ARB_shader_atomic_counters
#  GL_ARB_shader_image_load_store
#  GL_ARB_texture_storage
#  GL_ARB_transform_feedback_instanced
