module Roglew
	module Win32FFI
		def self.included(base)
      {
        :ATOM        => :uint,
        :BYTE        => :uchar,
        :DWORD       => :uint32,
        :HANDLE      => :pointer,
        :HCURSOR     => :pointer,
        :HDC         => :pointer,
        :HFONT       => :pointer,
        :HGLRC       => :pointer,
        :HICON       => :pointer,
        :HINSTANCE   => :pointer,
        :HMENU       => :pointer,
        :HMODULE     => :pointer,
        :HWND        => :pointer,
        :LPARAM      => :long,
        :LPRECT      => :pointer,
        :LPVOID      => :pointer,
        :LRESULT     => :long,
        :WORD        => :uint16,
        :WPARAM      => :ulong,
      }.each{ |k,v| base.typedef(v, k) }
		end
	end
end