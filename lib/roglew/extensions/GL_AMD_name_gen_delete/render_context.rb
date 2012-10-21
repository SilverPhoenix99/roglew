module GL_AMD_name_gen_delete
  module RenderContext
    include GLExtension

    functions [:glDeleteNamesAMD, [ :uint, :uint, :pointer ], :void],
              [:glGenNamesAMD, [ :uint, :uint, :pointer ], :void],
              [:glIsNameAMD, [ :uint, :uint ], :uchar]
  end
end