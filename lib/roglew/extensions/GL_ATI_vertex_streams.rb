module Roglew
  module GL
    MAX_VERTEX_STREAMS_ATI = 0x876B
    VERTEX_SOURCE_ATI      = 0x876C
    VERTEX_STREAM0_ATI     = 0x876D
    VERTEX_STREAM1_ATI     = 0x876E
    VERTEX_STREAM2_ATI     = 0x876F
    VERTEX_STREAM3_ATI     = 0x8770
    VERTEX_STREAM4_ATI     = 0x8771
    VERTEX_STREAM5_ATI     = 0x8772
    VERTEX_STREAM6_ATI     = 0x8773
    VERTEX_STREAM7_ATI     = 0x8774
  end
end

module GL_ATI_vertex_streams
  module RenderContext
    include Roglew::GLExtension

    functions [:glClientActiveVertexStreamATI, [ :uint ], :void],
              [:glNormalStream3bATI, [ :uint, :char, :char, :char ], :void],
              [:glNormalStream3bvATI, [ :uint, :pointer ], :void],
              [:glNormalStream3dATI, [ :uint, :double, :double, :double ], :void],
              [:glNormalStream3dvATI, [ :uint, :pointer ], :void],
              [:glNormalStream3fATI, [ :uint, :float, :float, :float ], :void],
              [:glNormalStream3fvATI, [ :uint, :pointer ], :void],
              [:glNormalStream3iATI, [ :uint, :int, :int, :int ], :void],
              [:glNormalStream3ivATI, [ :uint, :pointer ], :void],
              [:glNormalStream3sATI, [ :uint, :short, :short, :short ], :void],
              [:glNormalStream3svATI, [ :uint, :pointer ], :void],
              [:glVertexBlendEnvfATI, [ :uint, :float ], :void],
              [:glVertexBlendEnviATI, [ :uint, :int ], :void],
              [:glVertexStream1dATI, [ :uint, :double ], :void],
              [:glVertexStream1dvATI, [ :uint, :pointer ], :void],
              [:glVertexStream1fATI, [ :uint, :float ], :void],
              [:glVertexStream1fvATI, [ :uint, :pointer ], :void],
              [:glVertexStream1iATI, [ :uint, :int ], :void],
              [:glVertexStream1ivATI, [ :uint, :pointer ], :void],
              [:glVertexStream1sATI, [ :uint, :short ], :void],
              [:glVertexStream1svATI, [ :uint, :pointer ], :void],
              [:glVertexStream2dATI, [ :uint, :double, :double ], :void],
              [:glVertexStream2dvATI, [ :uint, :pointer ], :void],
              [:glVertexStream2fATI, [ :uint, :float, :float ], :void],
              [:glVertexStream2fvATI, [ :uint, :pointer ], :void],
              [:glVertexStream2iATI, [ :uint, :int, :int ], :void],
              [:glVertexStream2ivATI, [ :uint, :pointer ], :void],
              [:glVertexStream2sATI, [ :uint, :short, :short ], :void],
              [:glVertexStream2svATI, [ :uint, :pointer ], :void],
              [:glVertexStream3dATI, [ :uint, :double, :double, :double ], :void],
              [:glVertexStream3dvATI, [ :uint, :pointer ], :void],
              [:glVertexStream3fATI, [ :uint, :float, :float, :float ], :void],
              [:glVertexStream3fvATI, [ :uint, :pointer ], :void],
              [:glVertexStream3iATI, [ :uint, :int, :int, :int ], :void],
              [:glVertexStream3ivATI, [ :uint, :pointer ], :void],
              [:glVertexStream3sATI, [ :uint, :short, :short, :short ], :void],
              [:glVertexStream3svATI, [ :uint, :pointer ], :void],
              [:glVertexStream4dATI, [ :uint, :double, :double, :double, :double ], :void],
              [:glVertexStream4dvATI, [ :uint, :pointer ], :void],
              [:glVertexStream4fATI, [ :uint, :float, :float, :float, :float ], :void],
              [:glVertexStream4fvATI, [ :uint, :pointer ], :void],
              [:glVertexStream4iATI, [ :uint, :int, :int, :int, :int ], :void],
              [:glVertexStream4ivATI, [ :uint, :pointer ], :void],
              [:glVertexStream4sATI, [ :uint, :short, :short, :short, :short ], :void],
              [:glVertexStream4svATI, [ :uint, :pointer ], :void]
  end
end

