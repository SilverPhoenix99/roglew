module Roglew
  module GLExtension
    module ClassMethods
      def functions(*args)
        return @functions if args.length == 0
        @functions = args
      end

      def included(c)
        @functions.each do |name, parameters, ret_type|
          function = GL.get_function(name, parameters, ret_type)
          c.send(:define_method, name) { |*a| function.(*a) } if function
        end
      end
    end

    def self.included(c)
      c.extend ClassMethods
    end
  end
end