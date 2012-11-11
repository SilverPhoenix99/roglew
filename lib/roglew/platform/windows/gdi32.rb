module Roglew
	module Gdi32
		extend FFI::Library
		ffi_lib 'gdi32'
		ffi_convention :stdcall

		LOGPIXELSX = 88
		LOGPIXELSY = 90
    ENCODING = 'W' #A or W

		FONT_CHARSETS = {
			:ANSI        => 0,
			:DEFAULT     => 1,
			:SYMBOL      => 2,
			:MAC         => 77,
			:SHIFTJIS    => 128,
			:HANGUL      => 129,
			:JOHAB       => 130,
			:GB2312      => 134,
			:CHINESEBIG5 => 136,
			:GREEK       => 161,
			:TURKISH     => 162,
			:VIETNAMESE  => 163,
			:HEBREW      => 177,
			:ARABIC      => 178,
			:BALTIC      => 186,
			:RUSSIAN     => 204,
			:THAI        => 222,
			:EASTEUROPE  => 238,
			:OEM         => 255,
		}

		FONT_CLIP_PRECISION = {
			:DEFAULT_PRECIS   => 0x00,
			:CHARACTER_PRECIS => 0x01,
			:STROKE_PRECIS    => 0x02,
			:LH_ANGLES        => 0x10,
			:TT_ALWAYS        => 0x20,
			:DFA_DISABLE      => 0x40,
			:EMBEDDED         => 0x80,
			:MASK             => 0x0f,
		}

		FONT_FAMILY_PITCH = {
			:DEFAULT_PITCH     => 0x00,
			:FIXED_PITCH       => 0x01,
			:VARIABLE_PITCH    => 0x02,
			:FAMILY_DONTCARE   => 0x00,
			:FAMILY_ROMAN      => 0x10,
			:FAMILY_SWISS      => 0x20,
			:FAMILY_MODERN     => 0x30,
			:FAMILY_SCRIPT     => 0x40,
			:FAMILY_DECORATIVE => 0x50,
		}

		FONT_OUTPUT_PRECISION = {
			:DEFAULT        => 0,
			:STRING         => 1,
			:CHARACTER      => 2,
			:STROKE         => 3,
			:TT             => 4,
			:DEVICE         => 5,
			:RASTER         => 6,
			:TT_ONLY        => 7,
			:OUTLINE        => 8,
			:SCREEN_OUTLINE => 9,
			:PS_ONLY        => 10,
		}

		FONT_QUALITY = {
			:DEFAULT        => 0,
			:DRAFT          => 1,
			:PROOF          => 2,
			:NONANTIALIASED => 3,
			:ANTIALIASED    => 4,
			:CLEARTYPE      => 5,
		}

		FONT_WEIGHTS = {
			:DONTCARE   => 0,
			:THIN       => 100,
			:EXTRALIGHT => 200,
			:LIGHT      => 300,
			:NORMAL     => 400,
			:MEDIUM     => 500,
			:SEMIBOLD   => 600,
			:BOLD       => 700,
			:EXTRABOLD  => 800,
			:HEAVY      => 900,
		}

		PFDFlags = enum :pfd_flags, [
			:DOUBLEBUFFER,          0x0001,
			:STEREO,                0x0002,
			:DRAW_TO_WINDOW,        0x0004,
			:DRAW_TO_BITMAP,        0x0008,
			:SUPPORT_GDI,           0x0010,
			:SUPPORT_OPENGL,        0x0020,
			:GENERIC_FORMAT,        0x0040,
			:NEED_PALETTE,          0x0080,
			:NEED_SYSTEM_PALETTE,   0x0100,
			:SWAP_EXCHANGE,         0x0200,
			:SWAP_COPY,             0x0400,
			:SWAP_LAYER_BUFFERS,    0x0800,
			:GENERIC_ACCELERATED,   0x1000,
			:SUPPORT_DIRECTDRAW,    0x2000,
			:DIRECT3D_ACCELERATED,  0x4000,
			:SUPPORT_COMPOSITION,   0x8000,
			:DEPTH_DONTCARE,        0x20000000,
			:DOUBLEBUFFER_DONTCARE, 0x40000000,
			:STEREO_DONTCARE,       0x80000000
		]

		PFD_TYPE = enum :pfd_type, [:RGBA, :COLORINDEX]

		PFD_LAYER_TYPE = enum :pfd_layer_type, [:MAIN_PLANE, :OVERLAY_PLANE, :UNDERLAY_PLANE, -1]

		class PIXELFORMATDESCRIPTOR < FFI::Struct
			FLAGS_INV = PFDFlags.to_hash.reduce(Hash.new{ |h,k| h[k] = [] }){ |h,(k,v)| h[v] << k; h }.freeze

			layout :nSize,           :uint16,
				     :nVersion,        :uint16,
				     :dwFlags,         :uint,
				     :iPixelType,      :uint8,
				     :cColorBits,      :uint8,
				     :cRedBits,        :uint8,
				     :cRedShift,       :uint8,
				     :cGreenBits,      :uint8,
				     :cGreenShift,     :uint8,
				     :cBlueBits,       :uint8,
				     :cBlueShift,      :uint8,
				     :cAlphaBits,      :uint8,
				     :cAlphaShift,     :uint8,
				     :cAccumBits,      :uint8,
				     :cAccumRedBits,   :uint8,
				     :cAccumGreenBits, :uint8,
				     :cAccumBlueBits,  :uint8,
				     :cAccumAlphaBits, :uint8,
				     :cDepthBits,      :uint8,
				     :cStencilBits,    :uint8,
				     :cAuxBuffers,     :uint8,
				     :iLayerType,      :uint8,
				     :bReserved,       :uint8,
				     :dwLayerMask,     :uint,
				     :dwVisibleMask,   :uint,
				     :dwDamageMask,    :uint

			#undef_method :nSize=

			def initialize
				super
				self[:nSize] = self.size
			end

			def dwFlags
				val = self[:dwFlags]
				Set.new(FLAGS_INV.select { |k,_| val & k != 0 }.reduce([]) {|a,(_,v)| a << v}.flatten)
			end

			def dwFlags=(flags)
				self[:dwFlags] = [*flags].reduce(0) {|a,f| a | PFDFlags[f].to_i}
			end

			def to_s
				[:iPixelType, :cColorBits, :cAccumBits, :cDepthBits, :iLayerType, :dwFlags].map{|n| "#{n} = #{send(n).inspect}"}.join(', ')
			end
		end

		#int ChoosePixelFormat(
		#  HDC hdc,
		#  const PIXELFORMATDESCRIPTOR *ppfd)
		attach_function :ChoosePixelFormat, [:pointer, :pointer], :int

		#HFONT CreateFont(
		#  __in  int nHeight,
		#  __in  int nWidth,
		#  __in  int nEscapement,
		#  __in  int nOrientation,
		#  __in  int fnWeight,
		#  __in  DWORD fdwItalic,
		#  __in  DWORD fdwUnderline,
		#  __in  DWORD fdwStrikeOut,
		#  __in  DWORD fdwCharSet,
		#  __in  DWORD fdwOutputPrecision,
		#  __in  DWORD fdwClipPrecision,
		#  __in  DWORD fdwQuality,
		#  __in  DWORD fdwPitchAndFamily,
		#  __in  LPCTSTR lpszFace)
		attach_function :CreateFont, "CreateFont#{ENCODING}", [
				:int, #nHeight
				:int, #nWidth
				:int, #nEscapement
				:int, #nOrientation
				:int, #fnWeight (Gdi32::FONT_WEIGHTS or number between 0 and 1000)
				:uint, #fdwItalic
				:uint, #fdwUnderline
				:uint, #fdwStrikeOut
				:uint, #fdwCharSet (use Gdi32::FONT_CHARSETS)
				:uint, #fdwOutputPrecision (use Gdi32::FONT_OUTPUT_PRECISION)
				:uint, #fdwClipPrecision (use Gdi32::FONT_CLIP_PRECISION)
				:uint, #fdwQuality (use Gdi32::FONT_QUALITY)
				:uint, #fdwPitchAndFamily (use Gdi32::FONT_FAMILY_PITCH)
				:string #lpszFace
			], :pointer

		#BOOL DeleteObject(
		#  __in  HGDIOBJ hObject)
		attach_function :DeleteObject, [:pointer], :bool

		#int DescribePixelFormat(
		#  HDC hdc,
		#  int iPixelFormat,
		#  UINT nBytes,
		#  LPPIXELFORMATDESCRIPTOR ppfd)
		attach_function :DescribePixelFormat, [:pointer, :int, :uint, :pointer], :int

		#int GetDeviceCaps(
		#  __in  HDC hdc,
		#  __in  int nIndex)
		attach_function :GetDeviceCaps, [:pointer, :int], :int

    #int GetPixelFormat(
    #  HDC hdc
    #);
    attach_function :GetPixelFormat, [:pointer], :int

		#HGDIOBJ SelectObject(
		#  __in  HDC hdc,
		#  __in  HGDIOBJ hgdiobj)
		attach_function :SelectObject, [:pointer, :pointer], :pointer

		#BOOL SetPixelFormat(
		#  HDC hdc,
		#  int iPixelFormat,
		#  const PIXELFORMATDESCRIPTOR *ppfd)
		attach_function :SetPixelFormat, [:pointer, :int, :pointer], :bool

		#BOOL SwapBuffers(
		#  HDC hdc)
		attach_function :SwapBuffers, [:pointer], :bool
	end
end