module Roglew
  module GL
    extend FFI::Library
    ffi_lib 'opengl32'
    ffi_convention :stdcall

    include Win32FFI

    {
      :byte       => :int8,
      :ubyte      => :uint8,
      :GLbitfield => :uint,
      :GLboolean  => :uchar,
      :GLbyte     => :char,
      :GLclampd   => :double,
      :GLclampf   => :float,
      :GLdouble   => :double,
      :GLenum     => :uint,
      :GLfloat    => :float,
      :GLint      => :int,
      :GLshort    => :short,
      :GLsizei    => :int,
      :GLubyte    => :uchar,
      :GLuint     => :uint,
      :GLushort   => :ushort,
      :GLvoid     => :void
    }.each { |k, v| typedef(v, k) }

    BeginMode = enum :begin_mode, [
      :points,
      :lines,
      :line_loop,
      :line_strip,
      :triangles,
      :triangle_strip,
      :triangle_fan,
      :quads,
      :quad_strip,
      :polygon
    ]

    Capabilities = enum :capabilities, [
      :alpha_test, 0x0BC0,
      :blend,      0x0BE2,
      :depth_test, 0x0B71,
      :texture_2d, 0x0DE1
    ]

    ClearFlags = enum :clear_flags, [
      :depth,   0x0100,
      :accum,   0x0200,
      :stencil, 0x0400,
      :color,   0x4000
    ]

    GetTarget = {
      :matrix_mode => [0x0BA0, 1]
    }

    MatrixMode = enum :matrix_mode, [
      :modelview,  0x1700,
      :projection, 0x1701,
      :texture,    0x1702,
      :color,      0x1800
    ]

    PixelFormat = enum :pixel_format,[
      :stencil_index,   0x1901,
      :depth_component, 0x1902,
      :red,             0x1903,
      :green,           0x1904,
      :blue,            0x1905,
      :alpha,           0x1906,
      :rgb,             0x1907,
      :rgba,            0x1908
    ]

    AttribMask = {
      :current         => 0x00000001,
      :point           => 0x00000002,
      :line            => 0x00000004,
      :polygon         => 0x00000008,
      :polygon_stipple => 0x00000010,
      :pixel_mode      => 0x00000020,
      :lighting        => 0x00000040,
      :fog             => 0x00000080,
      :depth_buffer    => 0x00000100,
      :accum_buffer    => 0x00000200,
      :stencil_buffer  => 0x00000400,
      :viewport        => 0x00000800,
      :transform       => 0x00001000,
      :enable          => 0x00002000,
      :color_buffer    => 0x00004000,
      :hint            => 0x00008000,
      :eval            => 0x00010000,
      :list            => 0x00020000,
      :texture         => 0x00040000,
      :scissor         => 0x00080000,
      :all_attribs     => 0x000fffff,
    }

    def self.deferred?
      @deferred ||= true
    end

    def self.deferred=(v)
      @deferred = v
    end

    #void glBegin(GLenum mode)
    attach_function :glBegin, [BeginMode], :void
    def self.begin(primitive_type)
      glBegin(primitive_type)
      return unless block_given?
      yield
      self.end
    end

    singleton_class.instance_eval do
      BeginMode.symbols.each { |n| define_method(n, ->(&block) { self.begin(n, &block) }) }
    end

    #void glBindTexture(GLenum target, GLuint id)
    attach_function :bind_texture, :glBindTexture, [:GLenum, :GLuint], :void

    #void glBlendFunc(GLenum sfactor, GLenum dfactor)
    attach_function :blend_func, :glBlendFunc, [:GLenum, :GLenum], :void

    #void glCallList(GLuint list)
    attach_function :call_list, :glCallList, [:GLuint], :void

    #void glCallLists(GLsizei n, GLenum type, const GLvoid* lists)
    attach_function :call_lists, :glCallLists, [:GLsizei, :GLenum, :pointer], :void

    #void glClear(GLbitfield mask)
    attach_function :glClear, [:GLbitfield], :void
    def self.clear(*args)
      glClear(args.reduce(0){|a,v| a | ClearFlags[v]})
    end

    #void glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
    attach_function :clear_color, :glClearColor, [:GLclampf]*4, :void

    #void glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha)
    attach_function :glColor4d, [:GLdouble]*4, :void
    def self.color(*args)
      r, g, b, a = args.map{ |arg| arg.is_a?(Integer) ? arg/255.0 : arg }
      glColor4d(r, g, b, a || 1.0)
    end

    #HGLRC wglCreateContext(
    #  HDC hdc)
    attach_function :create_context, :wglCreateContext, [:HDC], :HGLRC

    #BOOL wglDeleteContext(
    #  HGLRC hglrc)
    attach_function :delete_context, :wglDeleteContext, [:HGLRC], :bool

    #void glDeleteLists(GLuint list, GLsizei range)
    attach_function :delete_lists, :glDeleteLists, [:GLuint, :GLsizei], :void
    def self.delete_list(list)
      glDeleteLists(list, 1)
    end

    #void glDeleteTextures(GLsizei n, const GLuint* id)
    attach_function :glDeleteTextures, [:GLsizei, :pointer], :void
    def self.delete_textures(*args)
      args = args.flatten
      ptr = FFI::MemoryPointer.new(:uint, args.length)
      ptr.write_array_of_uint(args)
      glDeleteTextures(ptr)
    end

    #void glDisable(GLenum cap)
    attach_function :glDisable, [:GLenum], :void
    def self.disable(*caps)
      caps.map{|cap|cap.is_a?(Integer) ? cap : Capabilities[cap]}.each do |cap|
        glDisable(cap)
      end
      return unless block_given?
      yield
      enable(*caps)
    end

    #void glEnable(GLenum cap)
    attach_function :glEnable, [:GLenum], :void
    def self.enable(*caps)
      caps.map{|cap|cap.is_a?(Integer) ? cap : Capabilities[cap]}.each do |cap|
        glEnable(cap)
      end
      return unless block_given?
      yield
      disable(*caps)
    end

    #void glEnd(void)
    attach_function :end, :glEnd, [], :void

    #void glEndList(void)
    attach_function :end_list, :glEndList, [], :void

    #GLuint glGenLists(GLsizei range)
    attach_function :gen_lists, :glGenLists, [:GLsizei], :GLuint

    #void glGenTextures(GLsizei n, GLuint* ids)
    attach_function :glGenTextures, [:GLsizei, :pointer], :GLuint
    def self.gen_textures(count = 1)
      ptr = FFI::MemoryPointer.new(:uint, count)
      glGenTextures(count, ptr)
      ids = ptr.read_array_of_uint(count)
      count == 1 ? ids[0] : ids
    end

    def self.get_values(type_name, type, pname, length)
      type_name, type = 'Integer', :int unless %w(Boolean Double Integer Float String).include?(type)
      pname, length = GetTarget[pname] if pname.is_a?(Symbol) || pname.is_a?(String)
      return nil if length <= 0
      p_values = FFI::MemoryPointer.new(type, length)
      send("glGet#{type_name}v", pname, p_values)
      result = p_values.send("read_array_of_#{type}", length)
      length == 1 ? result[0] : result
    end
    singleton_class.instance_eval{ private(:get_values) }

    #void glGetBooleanv(GLenum pname, GLboolean* params)
    attach_function :glGetBooleanv, [:GLenum, :pointer], :GLenum
    def self.get_booleans(pname, length = 1) get_values('Boolean', :uchar, pname, length) end

    #HDC WINAPI wglGetCurrentDC(void)
    attach_function :current_dc, :wglGetCurrentDC, [], :pointer

    #void glGetDoublev(GLenum pname, GLdouble* params)
    attach_function :glGetDoublev, [:GLenum, :pointer], :GLenum
    def self.get_doubles(pname, length = 1) get_values('Double', :double, pname, length) end

    #GLenum glGetError(void)
    attach_function :get_error, :glGetError, [], :GLenum

    #void glGetFloatv(GLenum pname, GLfloat* params)
    attach_function :glGetFloatv, [:GLenum, :pointer], :GLenum
    def self.get_floats(pname, length = 1) get_values('Float', :float, pname, length) end

    #void glGetIntegerv(GLenum pname, GLint* params)
    attach_function :glGetIntegerv, [:GLenum, :pointer], :GLenum
    def self.get_integers(pname, length = 1) get_values('Integer', :int, pname, length) end

    #PROC WINAPI wglGetProcAddress(LPCSTR lpszProc)
    attach_function :proc_address, :wglGetProcAddress, [:string], :pointer

    #GLubyte* glGetString(GLenum name)
    attach_function :get_string, :glGetString, [:GLenum], :string

    def self.get_matrix_mode(as_integer = false)
      mode = get_integers(:matrix_mode)
      return MatrixMode[mode] if mode && !as_integer
      mode
    end

    #void glListBase(GLuint base)
    attach_function :list_base, :glListBase, [:GLuint], :void

    #void glLoadIdentity(void)
    attach_function :load_identity, :glLoadIdentity, [], :void

    #void glLoadMatrixd(const GLdouble* m)
    attach_function :glLoadMatrixd, [:pointer], :void
    def self.load_matrix(*m)
      raise ArgumentError, "wrong number of arguments (#{m.length} for 16)" unless m.length == 16
      m = m.map(&:to_f)
      pm = FFI::MemoryPointer.new(:double, 16)
      pm.write_array_of_double(m)
      glLoadMatrixd(pm)
    end

    #void glMatrixMode(GLenum mode)
    attach_function :glMatrixMode, [MatrixMode], :void
    def self.matrix_mode(mode)

      mode = MatrixMode[mode] unless mode.is_a?(Integer)

      #int old_mode; getGetIntegersv(GL_MATRIX_MODE, &old_mode);
      old_mode = block_given? ? get_matrix_mode(true) : nil

      glMatrixMode(mode) if mode != old_mode
      return unless block_given?
      yield
      glMatrixMode(old_mode) if old_mode && mode != old_mode
    end

    #BOOL wglMakeCurrent(
    #  HDC hdc,
    #  HGLRC hglrc)
    attach_function :make_current, :wglMakeCurrent, [:HDC, :HGLRC], :bool

    #void glMultMatrixd(const GLdouble* m)
    attach_function :glMultMatrixd, [:pointer], :void
    def self.mult_matrix(*m)
      raise ArgumentError, "wrong number of arguments (#{m.length} for 16)" unless m.length == 16
      p_m = FFI::MemoryPointer.new(:double, 16)
      p_m.write_array_of_double(m.map{|v|v.to_f})
      glMultMatrixd(p_m)
    end

    #void glNewList(GLuint list, GLenum mode)
    attach_function :glNewList, [:GLuint, :GLenum], :void
    def self.new_list(list = nil, execute = false)
      list = gen_lists(1) unless list

      mode = 0x1300 + (execute ? 1 : 0) #GL_COMPILE_AND_EXECUTE = GL_COMPILE + 1 = 0x1300 + 1
      glNewList(list, mode)
      if block_given?
        yield
        end_list
      end
      list
    end

    #void glOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble nearVal, GLdouble farVal)
    attach_function :ortho, :glOrtho, [:GLdouble]*6, :void

    #void glPopAttrib(void)
    attach_function :pop_attrib, :glPopAttrib, [], :void

    #void glPopMatrix(void)
    attach_function :pop_matrix, :glPopMatrix, [], :void

    #void glPushAttrib(GLbitfield mask)
    attach_function :glPushAttrib, [:GLbitfield], :void
    def self.push_attrib(*args)
      glPushAttrib(args.map { |v| AttribMask[v] }.reduce(0) { |a,v| a|v })
      return unless block_given?
      yield
      pop_attrib
    end

    #void glPushMatrix(void)
    attach_function :glPushMatrix, [], :void
    def self.push_matrix
      glPushMatrix
      return unless block_given?
      yield
      pop_matrix
    end

    #void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    attach_function :glRasterPos4d, [:GLdouble]*4, :void
    def self.raster_pos(x, y, z = 0.0, w = 1.0)
      glRasterPos4d(x.to_f, y.to_f, z.to_f, w.to_f)
    end

    #void glTranslated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z)
    attach_function :glRotated, [:GLdouble]*4, :void
    def self.rotate(angle, x, y, z)
      glRotated(angle.to_f, x.to_f, y.to_f, z.to_f)
    end

    #void glScaled(GLdouble x, GLdouble y, GLdouble z)
    attach_function :glScaled, [:GLdouble]*3, :void
    def self.scale(x, y, z = 1.0)
      glScaled(x.to_f, y.to_f, z.to_f)
    end

    #void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q)
    attach_function :glTexCoord4d, [:GLdouble]*4, :void
    def self.tex_coord(s, t = 0.0, r = 0.0, q = 1.0)
      glTexCoord4d(s.to_f, t.to_f, r.to_f, q.to_f)
    end

    #void glTexEnvfv(GLenum target, GLenum pname, GLfloat* param)
    attach_function :glTexEnvfv, [:GLenum, :GLenum, :pointer], :void

    #void glTexEnviv(GLenum target, GLenum pname, GLint* param)
    attach_function :glTexEnviv, [:GLenum, :GLenum, :pointer], :void

    def self.tex_env(target, pname, *params)
      params.flatten!
      ints = params.all? { |param| param.is_a? Integer }
      ptr = FFI::MemoryPointer.new(ints ? :GLint : :GLfloat, params.length)
      ptr.send("write_array_of_#{ints ? 'int' : 'float'}", params)
      send("glTexEnv#{ints ? 'i' : 'f'}v", target, pname, ptr)
    end

    #void glTexImage2D(
    #    GLenum target,
    #    GLint level,
    #    GLint internalFormat,
    #    GLsizei width,
    #    GLsizei height,
    #    GLint border,
    #    GLenum format,
    #    GLenum type,
    #    const GLvoid* data)
    attach_function :tex_image_2d, :glTexImage2D,
            [:GLenum, :GLint, :GLint, :GLsizei, :GLsizei, :GLint, :GLenum, :GLenum, :pointer],
            :void

    #void glTexParameterfv(GLenum target, GLenum pname, GLfloat* param)
    attach_function :glTexParameterfv, [:GLenum, :GLenum, :pointer], :void

    #void glTexParameteriv(GLenum target, GLenum pname, GLint* param)
    attach_function :glTexParameteriv, [:GLenum, :GLenum, :pointer], :void

    def self.tex_parameter(target, pname, *params)
      params.flatten!
      ints = params.all? { |param| param.is_a? Integer }
      ptr = FFI::MemoryPointer.new(ints ? :int : :float, params.length)
      ptr.send("write_array_of_#{ints ? 'int' : 'float'}", params)
      send("glTexParameter#{ints ? 'i' : 'f'}v", target, pname, ptr)
    end

    #void glTranslated(GLdouble x, GLdouble y, GLdouble z)
    attach_function :glTranslated, [:GLdouble]*3, :void
    def self.translate(x, y, z = 0.0)
      glTranslated(x.to_f, y.to_f, z.to_f)
    end

    #BOOL wglUseFontBitmaps(HDC hdc, DWORD first, DWORD count, DWORD listBase)
    #attach_function 'UseFontBitmaps', "wglUseFontBitmaps#{User32::ENCODING}", [:HDC, :DWORD, :DWORD, :DWORD], :bool
    attach_function :use_font_bitmaps, :wglUseFontBitmapsA, [:HDC, :DWORD, :DWORD, :DWORD], :bool

    #void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)
    attach_function :glVertex4d, [:GLdouble]*4, :void
    def self.vertex(x, y, z = 0.0, w = 1.0)
      glVertex4d(x.to_f, y.to_f, z.to_f, w.to_f)
    end

    #void glViewport(GLint x, GLint y, GLsizei width, GLsizei height)
    attach_function :viewport, :glViewport, [:GLint, :GLint, :GLsizei, :GLsizei], :void
  end
end