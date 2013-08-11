module Roglew
  module GL
    COLOR_SUM_ARB                            ||= 0x8458
    CURRENT_MATRIX_ARB                       ||= 0x8641
    CURRENT_MATRIX_STACK_DEPTH_ARB           ||= 0x8640
    CURRENT_VERTEX_ATTRIB_ARB                ||= 0x8626
    MATRIX0_ARB                              ||= 0x88C0
    MATRIX1_ARB                              ||= 0x88C1
    MATRIX10_ARB                             ||= 0x88CA
    MATRIX11_ARB                             ||= 0x88CB
    MATRIX12_ARB                             ||= 0x88CC
    MATRIX13_ARB                             ||= 0x88CD
    MATRIX14_ARB                             ||= 0x88CE
    MATRIX15_ARB                             ||= 0x88CF
    MATRIX16_ARB                             ||= 0x88D0
    MATRIX17_ARB                             ||= 0x88D1
    MATRIX18_ARB                             ||= 0x88D2
    MATRIX19_ARB                             ||= 0x88D3
    MATRIX2_ARB                              ||= 0x88C2
    MATRIX20_ARB                             ||= 0x88D4
    MATRIX21_ARB                             ||= 0x88D5
    MATRIX22_ARB                             ||= 0x88D6
    MATRIX23_ARB                             ||= 0x88D7
    MATRIX24_ARB                             ||= 0x88D8
    MATRIX25_ARB                             ||= 0x88D9
    MATRIX26_ARB                             ||= 0x88DA
    MATRIX27_ARB                             ||= 0x88DB
    MATRIX28_ARB                             ||= 0x88DC
    MATRIX29_ARB                             ||= 0x88DD
    MATRIX3_ARB                              ||= 0x88C3
    MATRIX30_ARB                             ||= 0x88DE
    MATRIX31_ARB                             ||= 0x88DF
    MATRIX4_ARB                              ||= 0x88C4
    MATRIX5_ARB                              ||= 0x88C5
    MATRIX6_ARB                              ||= 0x88C6
    MATRIX7_ARB                              ||= 0x88C7
    MATRIX8_ARB                              ||= 0x88C8
    MATRIX9_ARB                              ||= 0x88C9
    MAX_PROGRAM_ADDRESS_REGISTERS_ARB        ||= 0x88B1
    MAX_PROGRAM_ATTRIBS_ARB                  ||= 0x88AD
    MAX_PROGRAM_ENV_PARAMETERS_ARB           ||= 0x88B5
    MAX_PROGRAM_INSTRUCTIONS_ARB             ||= 0x88A1
    MAX_PROGRAM_LOCAL_PARAMETERS_ARB         ||= 0x88B4
    MAX_PROGRAM_MATRICES_ARB                 ||= 0x862F
    MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB       ||= 0x862E
    MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB ||= 0x88B3
    MAX_PROGRAM_NATIVE_ATTRIBS_ARB           ||= 0x88AF
    MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB      ||= 0x88A3
    MAX_PROGRAM_NATIVE_PARAMETERS_ARB        ||= 0x88AB
    MAX_PROGRAM_NATIVE_TEMPORARIES_ARB       ||= 0x88A7
    MAX_PROGRAM_PARAMETERS_ARB               ||= 0x88A9
    MAX_PROGRAM_TEMPORARIES_ARB              ||= 0x88A5
    MAX_VERTEX_ATTRIBS_ARB                   ||= 0x8869
    PROGRAM_ADDRESS_REGISTERS_ARB            ||= 0x88B0
    PROGRAM_ATTRIBS_ARB                      ||= 0x88AC
    PROGRAM_BINDING_ARB                      ||= 0x8677
    PROGRAM_ERROR_POSITION_ARB               ||= 0x864B
    PROGRAM_ERROR_STRING_ARB                 ||= 0x8874
    PROGRAM_FORMAT_ARB                       ||= 0x8876
    PROGRAM_FORMAT_ASCII_ARB                 ||= 0x8875
    PROGRAM_INSTRUCTIONS_ARB                 ||= 0x88A0
    PROGRAM_LENGTH_ARB                       ||= 0x8627
    PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB     ||= 0x88B2
    PROGRAM_NATIVE_ATTRIBS_ARB               ||= 0x88AE
    PROGRAM_NATIVE_INSTRUCTIONS_ARB          ||= 0x88A2
    PROGRAM_NATIVE_PARAMETERS_ARB            ||= 0x88AA
    PROGRAM_NATIVE_TEMPORARIES_ARB           ||= 0x88A6
    PROGRAM_PARAMETERS_ARB                   ||= 0x88A8
    PROGRAM_STRING_ARB                       ||= 0x8628
    PROGRAM_TEMPORARIES_ARB                  ||= 0x88A4
    PROGRAM_UNDER_NATIVE_LIMITS_ARB          ||= 0x88B6
    TRANSPOSE_CURRENT_MATRIX_ARB             ||= 0x88B7
    VERTEX_ATTRIB_ARRAY_ENABLED_ARB          ||= 0x8622
    VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB       ||= 0x886A
    VERTEX_ATTRIB_ARRAY_POINTER_ARB          ||= 0x8645
    VERTEX_ATTRIB_ARRAY_SIZE_ARB             ||= 0x8623
    VERTEX_ATTRIB_ARRAY_STRIDE_ARB           ||= 0x8624
    VERTEX_ATTRIB_ARRAY_TYPE_ARB             ||= 0x8625
    VERTEX_PROGRAM_ARB                       ||= 0x8620
    VERTEX_PROGRAM_POINT_SIZE_ARB            ||= 0x8642
    VERTEX_PROGRAM_TWO_SIDE_ARB              ||= 0x8643
  end
end

module GL_ARB_vertex_program
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glBindProgramARB, [ :uint, :uint ], :void],
        [:glDeleteProgramsARB, [ :int, :pointer ], :void],
        [:glDisableVertexAttribArrayARB, [ :uint ], :void],
        [:glEnableVertexAttribArrayARB, [ :uint ], :void],
        [:glGenProgramsARB, [ :int, :pointer ], :void],
        [:glGetProgramEnvParameterdvARB, [ :uint, :uint, :pointer ], :void],
        [:glGetProgramEnvParameterfvARB, [ :uint, :uint, :pointer ], :void],
        [:glGetProgramivARB, [ :uint, :uint, :pointer ], :void],
        [:glGetProgramLocalParameterdvARB, [ :uint, :uint, :pointer ], :void],
        [:glGetProgramLocalParameterfvARB, [ :uint, :uint, :pointer ], :void],
        [:glGetProgramStringARB, [ :uint, :uint, :pointer ], :void],
        [:glGetVertexAttribdvARB, [ :uint, :uint, :pointer ], :void],
        [:glGetVertexAttribfvARB, [ :uint, :uint, :pointer ], :void],
        [:glGetVertexAttribivARB, [ :uint, :uint, :pointer ], :void],
        [:glGetVertexAttribPointervARB, [ :uint, :uint, :pointer ], :void],
        [:glIsProgramARB, [ :uint ], :uchar],
        [:glProgramEnvParameter4dARB, [ :uint, :uint, :double, :double, :double, :double ], :void],
        [:glProgramEnvParameter4dvARB, [ :uint, :uint, :pointer ], :void],
        [:glProgramEnvParameter4fARB, [ :uint, :uint, :float, :float, :float, :float ], :void],
        [:glProgramEnvParameter4fvARB, [ :uint, :uint, :pointer ], :void],
        [:glProgramLocalParameter4dARB, [ :uint, :uint, :double, :double, :double, :double ], :void],
        [:glProgramLocalParameter4dvARB, [ :uint, :uint, :pointer ], :void],
        [:glProgramLocalParameter4fARB, [ :uint, :uint, :float, :float, :float, :float ], :void],
        [:glProgramLocalParameter4fvARB, [ :uint, :uint, :pointer ], :void],
        [:glProgramStringARB, [ :uint, :uint, :int, :pointer ], :void],
        [:glVertexAttrib1dARB, [ :uint, :double ], :void],
        [:glVertexAttrib1dvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib1fARB, [ :uint, :float ], :void],
        [:glVertexAttrib1fvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib1sARB, [ :uint, :short ], :void],
        [:glVertexAttrib1svARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib2dARB, [ :uint, :double, :double ], :void],
        [:glVertexAttrib2dvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib2fARB, [ :uint, :float, :float ], :void],
        [:glVertexAttrib2fvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib2sARB, [ :uint, :short, :short ], :void],
        [:glVertexAttrib2svARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib3dARB, [ :uint, :double, :double, :double ], :void],
        [:glVertexAttrib3dvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib3fARB, [ :uint, :float, :float, :float ], :void],
        [:glVertexAttrib3fvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib3sARB, [ :uint, :short, :short, :short ], :void],
        [:glVertexAttrib3svARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4bvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4dARB, [ :uint, :double, :double, :double, :double ], :void],
        [:glVertexAttrib4dvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4fARB, [ :uint, :float, :float, :float, :float ], :void],
        [:glVertexAttrib4fvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4ivARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4NbvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4NivARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4NsvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4NubARB, [ :uint, :uchar, :uchar, :uchar, :uchar ], :void],
        [:glVertexAttrib4NubvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4NuivARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4NusvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4sARB, [ :uint, :short, :short, :short, :short ], :void],
        [:glVertexAttrib4svARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4ubvARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4uivARB, [ :uint, :pointer ], :void],
        [:glVertexAttrib4usvARB, [ :uint, :pointer ], :void],
        [:glVertexAttribPointerARB, [ :uint, :int, :uint, :uchar, :int, :pointer ], :void]
    ]
  end
end

