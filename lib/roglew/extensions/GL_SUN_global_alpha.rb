module Roglew
  module GL
    GLOBAL_ALPHA_SUN        ||= 0x81D9
    GLOBAL_ALPHA_FACTOR_SUN ||= 0x81DA
  end
end

module GL_SUN_global_alpha
  module RenderContext
    include Roglew::GLExtension

    functions [:glGlobalAlphaFactorbSUN, [ :char ], :void],
              [:glGlobalAlphaFactordSUN, [ :double ], :void],
              [:glGlobalAlphaFactorfSUN, [ :float ], :void],
              [:glGlobalAlphaFactoriSUN, [ :int ], :void],
              [:glGlobalAlphaFactorsSUN, [ :short ], :void],
              [:glGlobalAlphaFactorubSUN, [ :uchar ], :void],
              [:glGlobalAlphaFactoruiSUN, [ :uint ], :void],
              [:glGlobalAlphaFactorusSUN, [ :ushort ], :void]
  end
end

