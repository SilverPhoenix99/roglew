module Roglew
  module GL
    ATTRIB_ARRAY_POINTER_NV         = 0x8645
    ATTRIB_ARRAY_SIZE_NV            = 0x8623
    ATTRIB_ARRAY_STRIDE_NV          = 0x8624
    ATTRIB_ARRAY_TYPE_NV            = 0x8625
    CURRENT_ATTRIB_NV               = 0x8626
    CURRENT_MATRIX_NV               = 0x8641
    CURRENT_MATRIX_STACK_DEPTH_NV   = 0x8640
    IDENTITY_NV                     = 0x862A
    INVERSE_NV                      = 0x862B
    INVERSE_TRANSPOSE_NV            = 0x862D
    MAP1_VERTEX_ATTRIB0_4_NV        = 0x8660
    MAP1_VERTEX_ATTRIB1_4_NV        = 0x8661
    MAP1_VERTEX_ATTRIB10_4_NV       = 0x866A
    MAP1_VERTEX_ATTRIB11_4_NV       = 0x866B
    MAP1_VERTEX_ATTRIB12_4_NV       = 0x866C
    MAP1_VERTEX_ATTRIB13_4_NV       = 0x866D
    MAP1_VERTEX_ATTRIB14_4_NV       = 0x866E
    MAP1_VERTEX_ATTRIB15_4_NV       = 0x866F
    MAP1_VERTEX_ATTRIB2_4_NV        = 0x8662
    MAP1_VERTEX_ATTRIB3_4_NV        = 0x8663
    MAP1_VERTEX_ATTRIB4_4_NV        = 0x8664
    MAP1_VERTEX_ATTRIB5_4_NV        = 0x8665
    MAP1_VERTEX_ATTRIB6_4_NV        = 0x8666
    MAP1_VERTEX_ATTRIB7_4_NV        = 0x8667
    MAP1_VERTEX_ATTRIB8_4_NV        = 0x8668
    MAP1_VERTEX_ATTRIB9_4_NV        = 0x8669
    MAP2_VERTEX_ATTRIB0_4_NV        = 0x8670
    MAP2_VERTEX_ATTRIB1_4_NV        = 0x8671
    MAP2_VERTEX_ATTRIB10_4_NV       = 0x867A
    MAP2_VERTEX_ATTRIB11_4_NV       = 0x867B
    MAP2_VERTEX_ATTRIB12_4_NV       = 0x867C
    MAP2_VERTEX_ATTRIB13_4_NV       = 0x867D
    MAP2_VERTEX_ATTRIB14_4_NV       = 0x867E
    MAP2_VERTEX_ATTRIB15_4_NV       = 0x867F
    MAP2_VERTEX_ATTRIB2_4_NV        = 0x8672
    MAP2_VERTEX_ATTRIB3_4_NV        = 0x8673
    MAP2_VERTEX_ATTRIB4_4_NV        = 0x8674
    MAP2_VERTEX_ATTRIB5_4_NV        = 0x8675
    MAP2_VERTEX_ATTRIB6_4_NV        = 0x8676
    MAP2_VERTEX_ATTRIB7_4_NV        = 0x8677
    MAP2_VERTEX_ATTRIB8_4_NV        = 0x8678
    MAP2_VERTEX_ATTRIB9_4_NV        = 0x8679
    MATRIX0_NV                      = 0x8630
    MATRIX1_NV                      = 0x8631
    MATRIX2_NV                      = 0x8632
    MATRIX3_NV                      = 0x8633
    MATRIX4_NV                      = 0x8634
    MATRIX5_NV                      = 0x8635
    MATRIX6_NV                      = 0x8636
    MATRIX7_NV                      = 0x8637
    MAX_TRACK_MATRICES_NV           = 0x862F
    MAX_TRACK_MATRIX_STACK_DEPTH_NV = 0x862E
    MODELVIEW_PROJECTION_NV         = 0x8629
    PROGRAM_ERROR_POSITION_NV       = 0x864B
    PROGRAM_LENGTH_NV               = 0x8627
    PROGRAM_PARAMETER_NV            = 0x8644
    PROGRAM_RESIDENT_NV             = 0x8647
    PROGRAM_STRING_NV               = 0x8628
    PROGRAM_TARGET_NV               = 0x8646
    TRACK_MATRIX_NV                 = 0x8648
    TRACK_MATRIX_TRANSFORM_NV       = 0x8649
    TRANSPOSE_NV                    = 0x862C
    VERTEX_ATTRIB_ARRAY0_NV         = 0x8650
    VERTEX_ATTRIB_ARRAY1_NV         = 0x8651
    VERTEX_ATTRIB_ARRAY10_NV        = 0x865A
    VERTEX_ATTRIB_ARRAY11_NV        = 0x865B
    VERTEX_ATTRIB_ARRAY12_NV        = 0x865C
    VERTEX_ATTRIB_ARRAY13_NV        = 0x865D
    VERTEX_ATTRIB_ARRAY14_NV        = 0x865E
    VERTEX_ATTRIB_ARRAY15_NV        = 0x865F
    VERTEX_ATTRIB_ARRAY2_NV         = 0x8652
    VERTEX_ATTRIB_ARRAY3_NV         = 0x8653
    VERTEX_ATTRIB_ARRAY4_NV         = 0x8654
    VERTEX_ATTRIB_ARRAY5_NV         = 0x8655
    VERTEX_ATTRIB_ARRAY6_NV         = 0x8656
    VERTEX_ATTRIB_ARRAY7_NV         = 0x8657
    VERTEX_ATTRIB_ARRAY8_NV         = 0x8658
    VERTEX_ATTRIB_ARRAY9_NV         = 0x8659
    VERTEX_PROGRAM_BINDING_NV       = 0x864A
    VERTEX_PROGRAM_NV               = 0x8620
    VERTEX_PROGRAM_POINT_SIZE_NV    = 0x8642
    VERTEX_PROGRAM_TWO_SIDE_NV      = 0x8643
    VERTEX_STATE_PROGRAM_NV         = 0x8621
  end
end

module GL_NV_vertex_program
  module RenderContext
    include GLExtension

    functions [:glAreProgramsResidentNV, [ :int, :pointer, :pointer ], :uchar],
              [:glBindProgramNV, [ :uint, :uint ], :void],
              [:glDeleteProgramsNV, [ :int, :pointer ], :void],
              [:glExecuteProgramNV, [ :uint, :uint, :pointer ], :void],
              [:glGenProgramsNV, [ :int, :pointer ], :void],
              [:glGetProgramivNV, [ :uint, :uint, :pointer ], :void],
              [:glGetProgramParameterdvNV, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetProgramParameterfvNV, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetProgramStringNV, [ :uint, :uint, :pointer ], :void],
              [:glGetTrackMatrixivNV, [ :uint, :uint, :uint, :pointer ], :void],
              [:glGetVertexAttribdvNV, [ :uint, :uint, :pointer ], :void],
              [:glGetVertexAttribfvNV, [ :uint, :uint, :pointer ], :void],
              [:glGetVertexAttribivNV, [ :uint, :uint, :pointer ], :void],
              [:glGetVertexAttribPointervNV, [ :uint, :uint, :pointer ], :void],
              [:glIsProgramNV, [ :uint ], :uchar],
              [:glLoadProgramNV, [ :uint, :uint, :int, :pointer ], :void],
              [:glProgramParameter4dNV, [ :uint, :uint, :double, :double, :double, :double ], :void],
              [:glProgramParameter4dvNV, [ :uint, :uint, :pointer ], :void],
              [:glProgramParameter4fNV, [ :uint, :uint, :float, :float, :float, :float ], :void],
              [:glProgramParameter4fvNV, [ :uint, :uint, :pointer ], :void],
              [:glProgramParameters4dvNV, [ :uint, :uint, :int, :pointer ], :void],
              [:glProgramParameters4fvNV, [ :uint, :uint, :int, :pointer ], :void],
              [:glRequestResidentProgramsNV, [ :int, :pointer ], :void],
              [:glTrackMatrixNV, [ :uint, :uint, :uint, :uint ], :void],
              [:glVertexAttrib1dNV, [ :uint, :double ], :void],
              [:glVertexAttrib1dvNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib1fNV, [ :uint, :float ], :void],
              [:glVertexAttrib1fvNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib1sNV, [ :uint, :short ], :void],
              [:glVertexAttrib1svNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib2dNV, [ :uint, :double, :double ], :void],
              [:glVertexAttrib2dvNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib2fNV, [ :uint, :float, :float ], :void],
              [:glVertexAttrib2fvNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib2sNV, [ :uint, :short, :short ], :void],
              [:glVertexAttrib2svNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib3dNV, [ :uint, :double, :double, :double ], :void],
              [:glVertexAttrib3dvNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib3fNV, [ :uint, :float, :float, :float ], :void],
              [:glVertexAttrib3fvNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib3sNV, [ :uint, :short, :short, :short ], :void],
              [:glVertexAttrib3svNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib4dNV, [ :uint, :double, :double, :double, :double ], :void],
              [:glVertexAttrib4dvNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib4fNV, [ :uint, :float, :float, :float, :float ], :void],
              [:glVertexAttrib4fvNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib4sNV, [ :uint, :short, :short, :short, :short ], :void],
              [:glVertexAttrib4svNV, [ :uint, :pointer ], :void],
              [:glVertexAttrib4ubNV, [ :uint, :uchar, :uchar, :uchar, :uchar ], :void],
              [:glVertexAttrib4ubvNV, [ :uint, :pointer ], :void],
              [:glVertexAttribPointerNV, [ :uint, :int, :uint, :int, :pointer ], :void],
              [:glVertexAttribs1dvNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs1fvNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs1svNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs2dvNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs2fvNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs2svNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs3dvNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs3fvNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs3svNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs4dvNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs4fvNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs4svNV, [ :uint, :int, :pointer ], :void],
              [:glVertexAttribs4ubvNV, [ :uint, :int, :pointer ], :void]
  end
end

