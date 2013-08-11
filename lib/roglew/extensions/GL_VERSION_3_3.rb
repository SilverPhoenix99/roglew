module GL_VERSION_3_3
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [ :glVertexAttribDivisor, [ :uint, :uint ], :void]
    ]
  end
end

#GL_VERSION_3_3 implicitly requires:
#  GL_ARB_explicit_attrib_location
#  GL_ARB_shader_bit_encoding
#  GL_ARB_blend_func_extended
#  GL_ARB_sampler_objects
#  GL_ARB_occlusion_query2
#  GL_ARB_texture_rgb10_a2ui
#  GL_ARB_texture_swizzle
#  GL_ARB_timer_query
#  GL_ARB_vertex_type_2_10_10_10_rev