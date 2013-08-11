module Roglew
  class Query

    attr_reader :handle, :id

    def initialize(handle)
      @handle = handle
      @id = handle.bind { |context| context.gen_queries }
      ObjectSpace.define_finalizer(self, self.class.finalize(@handle, @id))
    end

    def self.finalize(handle, id)
      proc do
        puts "releasing query #{id}"
        handle.bind { |context| context.delete_queries(id) }
      end
    end
  end
end