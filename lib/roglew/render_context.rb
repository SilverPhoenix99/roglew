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
        stack.peek
      end
    end

    def initialize(rh)
      @rh = rh
    end

    checks_current
    def begin(mode)
      @rh.glBegin(mode)
      return unless block_given?
      yield
      @rh.glEnd
    end

    %w'
      points
      lines
      line_strip
      line_loop
      triangles
      triangle_strip
      triangle_fan
      quads
      quad_strip
      polygon'.
    each do |v|
      class_eval("def #{v}(&block) self.begin(GL::#{v.upcase}, &block) end")
    end

    def bind
      return unless current?
      @rh.class.send(:push, @rh, self)
      @rh.send(:make_current)
      nil
    end

    checks_current
    def clear(*flags)
      @rh.glClear(flags.reduce(&:|))
    end

    checks_current
    def create_texture2d(*args)
      Texture2d.new(@rh, *args)
    end

    def_object :Textures

    def current?
      self.class.current == self
    end

    checks_current
    def disable(*caps)
      attribs = @rh.instance_variable_get(:@attribs)
      a1 = attribs.dup

      caps = Set[*caps] & attribs
      caps.each do |cap|
        @rh.glDisable(cap)
        attribs.delete(cap)
      end
      return unless block_given?
      yield

      disable(*(attribs - a1))
      enable(*(a1 - attribs))
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

      disable(*(attribs - a1))
      enable(*(a1 - attribs))
    end

    checks_current 'finished out of order: context must be current'
    def finished
      stack = self.class.send(:stack)
      stack.pop
      if stack.empty?
        @rh.send(:remove_current)
      else
        stack.peek.first.make_current
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
    def get_function(function_name, parameters, return_type)
      ptr = get_proc_address(function_name.to_s)
      return if ptr.null?
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
  end
end