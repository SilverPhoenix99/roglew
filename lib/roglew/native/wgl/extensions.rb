module Roglew
  module WGL
    #no definition found for these extensions:
    #  WGL_AMDX_gpu_association

    @extensions = {
      :WGL_3DL_stereo_control => [
        [:wglSetStereoEmitterState3DL, [ :pointer, :uint ], :bool ], ],

      :WGL_AMD_gpu_association => [
        [:wglBlitContextFramebufferAMD, [ :pointer, :int, :int, :int, :int, :int, :int, :int, :int, :uint, :uint ], :void ],
        [:wglCreateAssociatedContextAMD, [ :uint ], :pointer ],
        [:wglCreateAssociatedContextAttribsAMD, [ :uint, :pointer, :pointer ], :pointer ],
        [:wglDeleteAssociatedContextAMD, [ :pointer ], :bool ],
        [:wglGetContextGPUIDAMD, [ :pointer ], :uint ],
        [:wglGetCurrentAssociatedContextAMD, [ ], :pointer ],
        [:wglGetGPUIDsAMD, [ :uint, :pointer ], :uint ],
        [:wglGetGPUInfoAMD, [ :uint, :int, :uint, :uint, :pointer ], :int ],
        [:wglMakeAssociatedContextCurrentAMD, [ :pointer ], :bool ], ],

      :WGL_ARB_buffer_region => [
        [:wglCreateBufferRegionARB, [ :pointer, :int, :uint ], :pointer ],
        [:wglDeleteBufferRegionARB, [ :pointer ], :void ],
        [:wglRestoreBufferRegionARB, [ :pointer, :int, :int, :int, :int, :int, :int ], :bool ],
        [:wglSaveBufferRegionARB, [ :pointer, :int, :int, :int, :int ], :bool ], ],

      :WGL_ARB_create_context => [
        [:wglCreateContextAttribsARB, [ :pointer, :pointer, :pointer ], :pointer ], ],

      :WGL_ARB_extensions_string => [
        [:wglGetExtensionsStringARB, [ :pointer ], :string ], ],

      :WGL_ARB_make_current_read => [
        [:wglGetCurrentReadDCARB, [ ], :pointer ],
        [:wglMakeContextCurrentARB, [ :pointer, :pointer, :pointer ], :bool ], ],

      :WGL_ARB_pbuffer => [
        [:wglCreatePbufferARB, [ :pointer, :int, :int, :int, :pointer ], :pointer ],
        [:wglDestroyPbufferARB, [ :pointer ], :bool ],
        [:wglGetPbufferDCARB, [ :pointer ], :pointer ],
        [:wglQueryPbufferARB, [ :pointer, :int, :pointer ], :bool ],
        [:wglReleasePbufferDCARB, [ :pointer, :pointer ], :int ], ],

      :WGL_ARB_pixel_format => [
        [:wglChoosePixelFormatARB, [ :pointer, :pointer, :pointer, :uint, :pointer, :pointer ], :bool ],
        [:wglGetPixelFormatAttribfvARB, [ :pointer, :int, :int, :uint, :pointer, :pointer ], :bool ],
        [:wglGetPixelFormatAttribivARB, [ :pointer, :int, :int, :uint, :pointer, :pointer ], :bool ], ],

      :WGL_ARB_render_texture => [
        [:wglBindTexImageARB, [ :pointer, :int ], :bool ],
        [:wglReleaseTexImageARB, [ :pointer, :int ], :bool ],
        [:wglSetPbufferAttribARB, [ :pointer, :pointer ], :bool ], ],

      :WGL_EXT_display_color_table => [
        [:wglBindDisplayColorTableEXT, [ :ushort ], :uchar ],
        [:wglCreateDisplayColorTableEXT, [ :ushort ], :uchar ],
        [:wglDestroyDisplayColorTableEXT, [ :ushort ], :void ],
        [:wglLoadDisplayColorTableEXT, [ :pointer, :uint ], :uchar ], ],

      :WGL_EXT_extensions_string => [
        [:wglGetExtensionsStringEXT, [ ], :pointer ], ],

      :WGL_EXT_make_current_read => [
        [:wglGetCurrentReadDCEXT, [ ], :pointer ],
        [:wglMakeContextCurrentEXT, [ :pointer, :pointer, :pointer ], :bool ], ],

      :WGL_EXT_pbuffer => [
        [:wglCreatePbufferEXT, [ :pointer, :int, :int, :int, :pointer ], :pointer ],
        [:wglDestroyPbufferEXT, [ :pointer ], :bool ],
        [:wglGetPbufferDCEXT, [ :pointer ], :pointer ],
        [:wglQueryPbufferEXT, [ :pointer, :int, :pointer ], :bool ],
        [:wglReleasePbufferDCEXT, [ :pointer, :pointer ], :int ], ],

      :WGL_EXT_pixel_format => [
        [:wglChoosePixelFormatEXT, [ :pointer, :pointer, :pointer, :uint, :pointer, :pointer ], :bool ],
        [:wglGetPixelFormatAttribfvEXT, [ :pointer, :int, :int, :uint, :pointer, :pointer ], :bool ],
        [:wglGetPixelFormatAttribivEXT, [ :pointer, :int, :int, :uint, :pointer, :pointer ], :bool ], ],

      :WGL_EXT_swap_control => [
        [:wglGetSwapIntervalEXT, [ ], :int ],
        [:wglSwapIntervalEXT, [ :int ], :bool ], ],

      :WGL_I3D_digital_video_control => [
        [:wglGetDigitalVideoParametersI3D, [ :pointer, :int, :pointer ], :bool ],
        [:wglSetDigitalVideoParametersI3D, [ :pointer, :int, :pointer ], :bool ], ],

      :WGL_I3D_gamma => [
        [:wglGetGammaTableI3D, [ :pointer, :int, :pointer, :pointer, :pointer ], :bool ],
        [:wglGetGammaTableParametersI3D, [ :pointer, :int, :pointer ], :bool ],
        [:wglSetGammaTableI3D, [ :pointer, :int, :pointer, :pointer, :pointer ], :bool ],
        [:wglSetGammaTableParametersI3D, [ :pointer, :int, :pointer ], :bool ], ],

      :WGL_I3D_genlock => [
        [:wglDisableGenlockI3D, [ :pointer ], :bool ],
        [:wglEnableGenlockI3D, [ :pointer ], :bool ],
        [:wglGenlockSampleRateI3D, [ :pointer, :uint ], :bool ],
        [:wglGenlockSourceDelayI3D, [ :pointer, :uint ], :bool ],
        [:wglGenlockSourceEdgeI3D, [ :pointer, :uint ], :bool ],
        [:wglGenlockSourceI3D, [ :pointer, :uint ], :bool ],
        [:wglGetGenlockSampleRateI3D, [ :pointer, :pointer ], :bool ],
        [:wglGetGenlockSourceDelayI3D, [ :pointer, :pointer ], :bool ],
        [:wglGetGenlockSourceEdgeI3D, [ :pointer, :pointer ], :bool ],
        [:wglGetGenlockSourceI3D, [ :pointer, :pointer ], :bool ],
        [:wglIsEnabledGenlockI3D, [ :pointer, :pointer ], :bool ],
        [:wglQueryGenlockMaxSourceDelayI3D, [ :pointer, :pointer, :pointer ], :bool ], ],

      :WGL_I3D_image_buffer => [
        [:wglAssociateImageBufferEventsI3D, [ :pointer, :pointer, :pointer, :pointer, :uint ], :bool ],
        [:wglCreateImageBufferI3D, [ :pointer, :uint, :uint ], :pointer ],
        [:wglDestroyImageBufferI3D, [ :pointer, :pointer ], :bool ],
        [:wglReleaseImageBufferEventsI3D, [ :pointer, :pointer, :uint ], :bool ], ],

      :WGL_I3D_swap_frame_lock => [
        [:wglDisableFrameLockI3D, [ ], :bool ],
        [:wglEnableFrameLockI3D, [ ], :bool ],
        [:wglIsEnabledFrameLockI3D, [ :pointer ], :bool ],
        [:wglQueryFrameLockMasterI3D, [ :pointer ], :bool ], ],

      :WGL_I3D_swap_frame_usage => [
        [:wglBeginFrameTrackingI3D, [ ], :bool ],
        [:wglEndFrameTrackingI3D, [ ], :bool ],
        [:wglGetFrameUsageI3D, [ :pointer ], :bool ],
        [:wglQueryFrameTrackingI3D, [ :pointer, :pointer, :pointer ], :bool ], ],

      :WGL_NV_DX_interop => [
        [:wglDXCloseDeviceNV, [ :pointer ], :bool ],
        [:wglDXLockObjectsNV, [ :pointer, :int, :pointer ], :bool ],
        [:wglDXObjectAccessNV, [ :pointer, :uint ], :bool ],
        [:wglDXOpenDeviceNV, [ :pointer ], :pointer ],
        [:wglDXRegisterObjectNV, [ :pointer, :pointer, :uint, :uint, :uint ], :pointer ],
        [:wglDXSetResourceShareHandleNV, [ :pointer, :pointer ], :bool ],
        [:wglDXUnlockObjectsNV, [ :pointer, :int, :pointer ], :bool ],
        [:wglDXUnregisterObjectNV, [ :pointer, :pointer ], :bool ], ],

      :WGL_NV_copy_image => [
        [:wglCopyImageSubDataNV, [ :pointer, :uint, :uint, :int, :int, :int, :int, :pointer, :uint, :uint, :int, :int, :int, :int, :int, :int, :int ], :bool ], ],

      :WGL_NV_gpu_affinity => [
        [:wglCreateAffinityDCNV, [ :pointer ], :pointer ],
        [:wglDeleteDCNV, [ :pointer ],  ],
        [:wglEnumGpuDevicesNV, [ :pointer, :uint, GPU_DEVICE.ptr ], :bool ],
        [:wglEnumGpusFromAffinityDCNV, [ :pointer, :uint, :pointer ], :bool ],
        [:wglEnumGpusNV, [ :uint, :pointer ], :bool ], ],

      :WGL_NV_present_video => [
        [:wglBindVideoDeviceNV, [ :pointer, :uint, :pointer, :pointer ], :bool ],
        [:wglEnumerateVideoDevicesNV, [ :pointer, :pointer ], :int ],
        [:wglQueryCurrentContextNV, [ :int, :pointer ], :bool ], ],

      :WGL_NV_swap_group => [
        [:wglBindSwapBarrierNV, [ :uint, :uint ], :bool ],
        [:wglJoinSwapGroupNV, [ :pointer, :uint ], :bool ],
        [:wglQueryFrameCountNV, [ :pointer, :pointer ], :bool ],
        [:wglQueryMaxSwapGroupsNV, [ :pointer, :pointer, :pointer ], :bool ],
        [:wglQuerySwapGroupNV, [ :pointer, :pointer, :pointer ], :bool ],
        [:wglResetFrameCountNV, [ :pointer ], :bool ], ],

      :WGL_NV_vertex_array_range => [
        [:wglAllocateMemoryNV, [ :int, :float, :float, :float ], :pointer ],
        [:wglFreeMemoryNV, [ :pointer ], :void ], ],

      :WGL_NV_video_capture => [
        [:wglBindVideoCaptureDeviceNV, [ :uint, :pointer ], :bool ],
        [:wglEnumerateVideoCaptureDevicesNV, [ :pointer, :pointer ], :uint ],
        [:wglLockVideoCaptureDeviceNV, [ :pointer, :pointer ], :bool ],
        [:wglQueryVideoCaptureDeviceNV, [ :pointer, :pointer, :int, :pointer ], :bool ],
        [:wglReleaseVideoCaptureDeviceNV, [ :pointer, :pointer ], :bool ], ],

      :WGL_NV_video_output => [
        [:wglBindVideoImageNV, [ :pointer, :pointer, :int ], :bool ],
        [:wglGetVideoDeviceNV, [ :pointer, :int, :pointer ], :bool ],
        [:wglGetVideoInfoNV, [ :pointer, :pointer, :pointer ], :bool ],
        [:wglReleaseVideoDeviceNV, [ :pointer ], :bool ],
        [:wglReleaseVideoImageNV, [ :pointer, :int ], :bool ],
        [:wglSendPbufferToVideoNV, [ :pointer, :int, :pointer, :bool ], :bool ], ],

      :WGL_OML_sync_control => [
        [:wglGetMscRateOML, [ :pointer, :pointer, :pointer ], :bool ],
        [:wglGetSyncValuesOML, [ :pointer, :pointer, :pointer, :pointer ], :bool ],
        [:wglSwapBuffersMscOML, [ :pointer, :int64, :int64, :int64 ], :int64 ],
        [:wglSwapLayerBuffersMscOML, [ :pointer, :int, :int64, :int64, :int64 ], :int64 ],
        [:wglWaitForMscOML, [ :pointer, :int64, :int64, :int64, :pointer, :pointer, :pointer ], :bool ],
        [:wglWaitForSbcOML, [ :pointer, :int64, :pointer, :pointer, :pointer ], :bool ], ],

      :WGL_ATI_pixel_format_float => [],
      :WGL_ARB_pixel_format_float => [],
      :WGL_ARB_multisample => [],
      :WGL_EXT_swap_control_tear => [],
      :WGL_EXT_framebuffer_sRGB => [],
      :WGL_ATI_render_texture_rectangle => [],
      :WGL_EXT_pixel_format_packed_float => [],
      :WGL_ARB_create_context_profile => [],
      :WGL_NV_float_buffer => [],
    }
  end
end