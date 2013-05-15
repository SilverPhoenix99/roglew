module Roglew
  class RenderContextError < StandardError; end

  module RenderContextExtension
    module ClassMethods
      def def_gen(name, function)
        checks_current
        define_method "gen_#{name}", ->(count = 1) do
          p = FFI::MemoryPointer.new(:uint, count)
          send(function, count, p)
          ids = p.read_array_of_uint(count)
          count == 1 ? ids[0] : ids
        end
      end

      def def_delete(name, function)
        checks_current
        define_method "delete_#{name}", ->(ids) do
          raise Roglew::RenderContext::ContextError, 'render handle not current' unless @rh.current?
          p = FFI::MemoryPointer.new(:uint, ids.count)
          p.write_array_of_uint(ids)
          send(function, ids.count, p)
          nil
        end
      end

      def def_object(name)
        def_gen(name.to_s.snakecase, "glGen#{name}")
        def_delete(name.to_s.snakecase, "glDelete#{name}")
      end

      private
      def checks_current(msg = 'render handle not current')
        @checks_current = msg
      end

      def method_added(name)
        return unless @checks_current
        msg = remove_instance_variable :@checks_current
        m = instance_method(name)
        define_method(name) do |*args|
          raise RenderContextError, msg unless @rh.current?
          m.bind(self).(*args)
        end
      end
    end

    def self.included(c)
      c.extend ClassMethods
    end
  end
end