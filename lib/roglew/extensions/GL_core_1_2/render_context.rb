module GL_core_1_2
  module RenderContext
    include GLExtension

    functions [:glCopyTexSubImage3D, [:uint, :int, :int, :int, :int, :int, :int, :int, :int],                   :void],
              [:glDrawRangeElements, [:uint, :uint, :uint, :int, :uint, :pointer],                              :void],
              [:glTexImage3D,        [:uint, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer],       :void],
              [:glTexSubImage3D,     [:uint, :int, :int, :int, :int, :int, :int, :int, :uint, :uint, :pointer], :void]

    def draw_range_elements(mode, indices)
      p = FFI::MemoryPointer.new(:uint, indices.count)
      p.write_array_of_uint(indices)
      glDrawRangeElements(mode, 0, indices.count - 1, indices.count, GL::UNSIGNED_INT, p)
    end
  end
end