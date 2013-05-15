module Roglew
  module RenderHandleExtension
    module ClassMethods
      def functions(*args)
        return @functions if args.length == 0
        @functions = args
      end
    end

    def self.included(c)
      c.extend ClassMethods
    end
  end
end