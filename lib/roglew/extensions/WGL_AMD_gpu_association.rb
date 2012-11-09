module Roglew
  module WGL
    GPU_CLOCK_AMD                 ||= 0x21A4
    GPU_FASTEST_TARGET_GPUS_AMD   ||= 0x21A2
    GPU_NUM_PIPES_AMD             ||= 0x21A5
    GPU_NUM_RB_AMD                ||= 0x21A7
    GPU_NUM_SIMD_AMD              ||= 0x21A6
    GPU_NUM_SPI_AMD               ||= 0x21A8
    GPU_OPENGL_VERSION_STRING_AMD ||= 0x1F02
    GPU_RAM_AMD                   ||= 0x21A3
    GPU_RENDERER_STRING_AMD       ||= 0x1F01
    GPU_VENDOR_AMD                ||= 0x1F00
  end
end

module WGL_AMD_gpu_association
  module RenderContext
    include Roglew::GLExtension

    functions [:wglBlitContextFramebufferAMD, [ :pointer, :int, :int, :int, :int, :int, :int, :int, :int, :uint, :uint ], :void ],
              [:wglCreateAssociatedContextAMD, [ :uint ], :pointer ],
              [:wglCreateAssociatedContextAttribsAMD, [ :uint, :pointer, :pointer ], :pointer ],
              [:wglDeleteAssociatedContextAMD, [ :pointer ], :bool ],
              [:wglGetContextGPUIDAMD, [ :pointer ], :uint ],
              [:wglGetCurrentAssociatedContextAMD, [ ], :pointer ],
              [:wglGetGPUIDsAMD, [ :uint, :pointer ], :uint ],
              [:wglGetGPUInfoAMD, [ :uint, :int, :uint, :uint, :pointer ], :int ],
              [:wglMakeAssociatedContextCurrentAMD, [ :pointer ], :bool ]
  end
end