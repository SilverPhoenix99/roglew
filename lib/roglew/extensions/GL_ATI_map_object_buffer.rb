module GL_ATI_map_object_buffer
  module RenderContext
    include GLExtension

    functions [:glMapObjectBufferATI, [ :uint ], :pointer],
              [:glUnmapObjectBufferATI, [ :uint ], :void]
  end
end

