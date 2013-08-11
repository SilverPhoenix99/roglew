module GL_ATI_map_object_buffer
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glMapObjectBufferATI, [ :uint ], :pointer],
        [:glUnmapObjectBufferATI, [ :uint ], :void]
    ]
  end
end

