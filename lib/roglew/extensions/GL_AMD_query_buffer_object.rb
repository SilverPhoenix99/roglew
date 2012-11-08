module Roglew
  module GL
    QUERY_BUFFER_AMD         = 0x9192 unless const_defined? :QUERY_BUFFER_AMD
    QUERY_BUFFER_BINDING_AMD = 0x9193 unless const_defined? :QUERY_BUFFER_BINDING_AMD
    QUERY_RESULT_NO_WAIT_AMD = 0x9194 unless const_defined? :QUERY_RESULT_NO_WAIT_AMD
  end
end