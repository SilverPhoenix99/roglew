module Roglew
  module RenderHandleExtension
    module ClassMethods
      def functions(*args)
        if args.length > 0
          list = args.pop
          get_funcions << [Set.new(args), list]
        end
        get_funcions
      end

      private
      def get_funcions
        @functions ||= []
      end
    end

    def self.included(c)
      c.extend ClassMethods
    end
  end
end