module Roglew
  module GLObject
    module ClassMethods
      def def_gen(name, function)
        define_method "gen_#{name}", ->(count = 1) do
          p = FFI::MemoryPointer.new(:uint, count)
          send(function, count, p)
          ids = p.read_array_of_uint(count)
          count == 1 ? ids[0] : ids
        end
      end

      def def_delete(name, function)
        define_method "delete_#{name}", ->(ids) do
          p = FFI::MemoryPointer.new(:uint, ids.count)
          p.write_array_of_uint(ids)
          send(function, ids.count, p)
          nil
        end
      end
    end

    def self.included(c)
      c.extend(ClassMethods)
    end
  end
end