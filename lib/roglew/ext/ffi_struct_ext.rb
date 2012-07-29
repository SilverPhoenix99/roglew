require 'ffi'

module FFI
  class Struct
    class << self
      alias :layout_base :layout
      private :layout_base
    end

    def self.layout(*args)
      layout_base(*args)
      members.each do |name|
        unless instance_methods.member?(name)
        define_method name, ->{self[name]}
        define_method "#{name}=", ->(v){self[name] = v}
      end
      end
    end
  end
end