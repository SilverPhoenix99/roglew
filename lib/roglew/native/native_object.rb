module Roglew
  module NativeObject
    def get_prototype(extension, function_name)
      funcs = extensions[extension]
      funcs && funcs.find { |name, _, _| name == function_name }
    end

    # get_function(extension, function_name) - return function by extension and function name
    # get_function(name, parameters, return_type) - return function by prototype
    def get_function(*args)
      case args.length
        when 2
          func = get_prototype(*args)
          func && get_function(*func)
        when 3
          function_name, parameters, return_type = args
          ptr = WGL.GetProcAddress(function_name.to_s) #TODO platforms
          return nil if ptr.null?
          return_type = GL.find_type(return_type) || return_type
          parameters = parameters.map { |p| GL.find_type(p) || p }
          FFI::Function.new(return_type, parameters, ptr, convention: :stdcall)
        else
          raise ArgumentError, "wrong number of arguments (#{args.length} for 2..3)"
      end
    end
  end
end