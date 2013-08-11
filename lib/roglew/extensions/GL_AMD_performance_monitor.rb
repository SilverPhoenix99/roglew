module Roglew
  module GL
    COUNTER_RANGE_AMD            ||= 0x8BC1
    COUNTER_TYPE_AMD             ||= 0x8BC0
    PERCENTAGE_AMD               ||= 0x8BC3
    PERFMON_RESULT_AMD           ||= 0x8BC6
    PERFMON_RESULT_AVAILABLE_AMD ||= 0x8BC4
    PERFMON_RESULT_SIZE_AMD      ||= 0x8BC5
    UNSIGNED_INT64_AMD           ||= 0x8BC2
  end
end

module GL_AMD_performance_monitor
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glBeginPerfMonitorAMD, [ :uint ], :void],
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
    ]
  end
end