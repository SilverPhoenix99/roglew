module Roglew
  module NativeObject
    def get_function(function_name, parameters, return_type)
      ptr = WGL.GetProcAddress(function_name.to_s) #TODO platforms
      return nil if ptr.null?
      return_type = GL.find_type(return_type) || return_type
      parameters = parameters.map { |p| GL.find_type(p) || p }
      FFI::Function.new(return_type, parameters, ptr, convention: :stdcall)
    end
  end
end