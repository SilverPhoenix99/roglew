module GL_AMD_debug_output
  extend FFI::Library
  ffi_lib 'opengl32'
  ffi_convention :stdcall

  GLDEBUGPROCAMD = callback :GLDEBUGPROCAMD, [ :uint, :uint, :uint, :int, :string, :pointer ], :void

  module RenderContext
    include GLExtension

    functions [:glDebugMessageCallbackAMD, [ GLDEBUGPROCAMD, :pointer ], :void],
              [:glDebugMessageEnableAMD, [ :uint, :uint, :int, :pointer, :uchar ], :void],
              [:glDebugMessageInsertAMD, [ :uint, :uint, :uint, :int, :string ], :void],
              [:glGetDebugMessageLogAMD, [ :uint, :int, :pointer, :pointer, :pointer, :pointer, :string ], :uint]
  end
end