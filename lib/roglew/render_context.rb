module Roglew
  class RenderContext
    include RenderContextExtension

    class << self
      def current
        stack.empty? ? nil : peek.last
      end

      private
      def stack
        @stack ||= RenderHandle.send(:stack)
      end

      def peek
        stack.last
      end
    end

    def initialize(rh)
      @rh = rh

      c = singleton_class
      @rh.loaded_extensions.each do |ext|
        next unless Object.const_defined?(ext)
        mod = Object.const_get(ext)
        next unless mod.const_defined?(:RenderContext)
        c.send(:include, mod.const_get(:RenderContext))
      end
    end

    def bind
      return unless current?
      @rh.class.send(:push, @rh, self)
      @rh.send(:make_current)
      nil
    end

    checks_current
    def blend_func(src, dst)
      @rh.glBlendFunc(src, dst)
    end

    checks_current
    def clear(*flags)
      @rh.glClear(flags
        .map { |f| f.is_a?(Integer) ? f : GL.const_get("#{f.to_s.upcase}_BUFFER_BIT") }
        .reduce(&:|))
    end

    checks_current
    def clear_color
      get_floats(GL::COLOR_CLEAR_VALUE, 4)
    end

    checks_current
    def clear_color=(c)
      @rh.glClearColor(*c)
    end

    checks_current
    def clear_depth=(v)
      @rh.glClearDepth(v)
    end

    checks_current
    def clear_stencil=(v)
      @rh.glClearStencil(v)
    end

    checks_current
    def color_mask(r, g, b, a)
      @rh.glColorMask(r, g, b, a)
    end

    def_object :Textures

    def create_texture2d(*args)
      Roglew::Texture2d.new(@rh, *args)
    end

    def current?
      RenderContext.current == self
    end

    checks_current
    def disable(*caps)
      attribs = @rh.instance_variable_get(:@attribs)
      a1 = attribs.dup

      caps = Set[*caps] & attribs
      caps.each { |cap| @rh.glDisable(cap) }
      attribs.subtract(caps)
      return unless block_given?
      yield

      disable *(attribs - a1)
      enable  *(a1 - attribs)
    end

    checks_current
    def enable(*caps)
      attribs = @rh.instance_variable_get(:@attribs)
      a1 = attribs.dup

      caps = Set[*caps] - attribs
      caps.each { |cap| @rh.glEnable(cap) }
      attribs.merge(caps)
      return unless block_given?
      yield

      disable *(attribs - a1)
      enable  *(a1 - attribs)
    end

    checks_current 'finished out of order: context must be current'
    def finished
      stack = RenderContext.send(:stack)
      stack.pop
      if stack.empty?
        @rh.send(:remove_current)
      elsif stack.last.last != self
        stack.last.first.send(:make_current)
      end
      nil
    end

    checks_current
    def get_errors
      errors = []
      while (error = @rh.glGetError) != 0
        errors << GL::ERROR[error] || error
      end
      errors
    end

    checks_current
    def get_floats(pname, count = 1)
      p = FFI::MemoryPointer.new(:float, count)
      @rh.glGetFloatv(pname, p)
      result = p.read_array_of_float(count)
      count == 1 ? result[0] : result
    end

    checks_current
    def get_function(function_name, parameters, return_type)
      ptr = get_proc_address(function_name.to_s)
      if ptr.null?
        LOGGER.warn "couldn't find function: #{return_type} #{function_name}(#{parameters.join(', ')})"
        return
      end
      return_type = GL.find_type(return_type) || return_type
      parameters = parameters.map { |p| GL.find_type(p) || p }
      FFI::Function.new(return_type, parameters, ptr, convention: :stdcall)
    end

    checks_current
    def get_integers(pname, count = 1)
      p = FFI::MemoryPointer.new(:int, count)
      @rh.glGetIntegerv(pname, p)
      result = p.read_array_of_int(count)
      count == 1 ? result[0] : result
    end

    checks_current
    def get_proc_address(function_name)
      @rh.send(:get_proc_address, function_name)
    end

    def num_extensions
      get_integers(GL::NUM_EXTENSIONS)
    end

    def render_handle
      @rh
    end

    checks_current
    def swap_buffers
      @rh.send(:swap_buffers)
    end

    checks_current
    def tex_parameter(target, pname, *params)
      params.flatten!
      type = params.all? { |param| param.is_a? Integer } ? 'int' : 'float'
      ptr = FFI::MemoryPointer.new(type.to_sym, params.length)
      ptr.send("write_array_of_#{type}", params)
      @rh.send("glTexParameter#{type[0]}v", target, pname, ptr)
    end

    alias_method :handle, :render_handle
    alias_method :rh, :render_handle
  end
end