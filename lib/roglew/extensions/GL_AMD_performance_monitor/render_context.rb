module GL_AMD_performance_monitor
  module RenderContext
    include GLExtension

    functions [:glBeginPerfMonitorAMD, [ :uint ], :void],
              [:glDeletePerfMonitorsAMD, [ :int, :pointer ], :void],
              [:glEndPerfMonitorAMD, [ :uint ], :void],
              [:glGenPerfMonitorsAMD, [ :int, :pointer ], :void],
              [:glGetPerfMonitorCounterDataAMD, [ :uint, :uint, :int, :pointer, :pointer ], :void],
              [:glGetPerfMonitorCounterInfoAMD, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetPerfMonitorCountersAMD, [ :uint, :pointer, :pointer, :int, :pointer ], :void],
              [:glGetPerfMonitorCounterStringAMD, [ :uint, :uint, :int, :pointer, :string ], :void],
              [:glGetPerfMonitorGroupsAMD, [ :pointer, :int, :pointer ], :void],
              [:glGetPerfMonitorGroupStringAMD, [ :uint, :int, :pointer, :string ], :void],
              [:glSelectPerfMonitorCountersAMD, [ :uint, :uchar, :uint, :int, :pointer ], :void]
  end
end