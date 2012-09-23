module Roglew
  module WGL
    ENCODING = 'W'

    class RECT < FFI::Struct
      layout :left,   :long,
             :top,    :long,
             :right,  :long,
             :bottom, :long
    end
  
    class GPU_DEVICE < FFI::Struct
      layout :cb,              :uint,
             :DeviceName,      [:char, 32],
             :DeviceString,    [:char, 128],
             :Flags,           :uint,
             :rcVirtualScreen, RECT.by_value
    end

    class POINTFLOAT < FFI::Struct
      layout :x, :float,
             :y, :float
    end
  
    class GLYPHMETRICSFLOAT < FFI::Struct
      layout :gmfBlackBoxX,     :float,
             :gmfBlackBoxY,     :float,
             :gmfptGlyphOrigin, POINTFLOAT,
             :gmfCellIncX,      :float,
             :gmfCellIncY,      :float
    end
  
    class LAYERPLANEDESCRIPTOR < FFI::Struct
      layout :nSize,           :ushort,
             :nVersion,        :ushort,
             :dwFlags,         :uint,
             :iPixelType,      :uchar,
             :cColorBits,      :uchar,
             :cRedBits,        :uchar,
             :cRedShift,       :uchar,
             :cGreenBits,      :uchar,
             :cGreenShift,     :uchar,
             :cBlueBits,       :uchar,
             :cBlueShift,      :uchar,
             :cAlphaBits,      :uchar,
             :cAlphaShift,     :uchar,
             :cAccumBits,      :uchar,
             :cAccumRedBits,   :uchar,
             :cAccumGreenBits, :uchar,
             :cAccumBlueBits,  :uchar,
             :cAccumAlphaBits, :uchar,
             :cDepthBits,      :uchar,
             :cStencilBits,    :uchar,
             :cAuxBuffers,     :uchar,
             :iLayerType,      :uchar,
             :bReserved,       :uchar,
             :crTransparent,   :uint
    end
  
    class PIXELFORMATDESCRIPTOR < FFI::Struct
      layout :nSize,           :ushort,
             :nVersion,        :ushort,
             :iPixelType,      :uchar,
             :dwFlags,         :uint,
             :cColorBits,      :uchar,
             :cRedBits,        :uchar,
             :cRedShift,       :uchar,
             :cGreenBits,      :uchar,
             :cGreenShift,     :uchar,
             :cBlueBits,       :uchar,
             :cBlueShift,      :uchar,
             :cAlphaBits,      :uchar,
             :cAlphaShift,     :uchar,
             :cAccumBits,      :uchar,
             :cAccumRedBits,   :uchar,
             :cAccumGreenBits, :uchar,
             :cAccumBlueBits,  :uchar,
             :cAccumAlphaBits, :uchar,
             :cDepthBits,      :uchar,
             :cStencilBits,    :uchar,
             :cAuxBuffers,     :uchar,
             :iLayerType,      :uchar,
             :bReserved,       :uchar,
             :dwLayerMask,     :uint,
             :dwVisibleMask,   :uint,
             :dwDamageMask,    :uint
    end
  
    @functions = [
      #HGLRC WINAPI wglCreateContext(HDC hdc)
      [ :CreateContext, [:pointer], :pointer ],

      #HGLRC wglCreateLayerContext(HDC hdc, int iLayerPlane)
      [ :CreateLayerContext, [:pointer, :int], :pointer ],

      #BOOL wglCopyContext(HGLRC hglrcSrc, HGLRC hglrcDst, UINT mask)
      [ :CopyContext, [:pointer, :pointer, :uint], :bool ],

      #BOOL wglDeleteContext(HGLRC hglrc)
      [ :DeleteContext, [:pointer], :bool ],

      #BOOL wglDescribeLayerPlane(HDC hdc, int iPixelFormat, int iLayerPlane, UINT nBytes, LPLAYERPLANEDESCRIPTOR plpd)
      [ :DescribeLayerPlane, [:pointer, :int, :int, :uint, LAYERPLANEDESCRIPTOR.ptr], :bool ],

      #HGLRC wglGetCurrentContext()
      [ :GetCurrentContext, [], :pointer ],

      #HDC wglGetCurrentDC()
      [ :GetCurrentDC, [], :pointer ],

      #int wglGetLayerPaletteEntries(HDC hdc, int iLayerPlane, int iStart, int cEntries, COLORREF *pcr)
      [ :GetLayerPaletteEntries, [:pointer, :int, :int, :int, :pointer], :int ],

      #PROC wglGetProcAddress(LPCSTR lpszProc)
      [ :GetProcAddress, [:string], :pointer ],

      #BOOL wglMakeCurrent(HDC hdc, HGLRC hglrc)
      [ :MakeCurrent, [:pointer, :pointer], :bool ],

      #BOOL wglRealizeLayerPalette(HDC hdc, int iLayerPlane, BOOL bRealize)
      [ :RealizeLayerPalette, [:pointer, :int, :bool], :bool ],

      #int wglSetLayerPaletteEntries(HDC hdc, int iLayerPlane, int iStart, int cEntries, const COLORREF *pcr)
      [ :SetLayerPaletteEntries, [:pointer, :int, :int, :int, :pointer], :int ],

      #BOOL wglShareLists(HGLRC hglrc1, HGLRC hglrc2)
      [ :ShareLists, [:pointer, :pointer], :bool ],

      #BOOL wglSwapLayerBuffers(HDC hdc, UINT fuPlanes)
      [ :SwapLayerBuffers, [:pointer, :uint], :bool ],

      #BOOL wglUseFontBitmaps(HDC hdc, DWORD first, DWORD count, DWORD listBase)
      [ :UseFontBitmaps, "wglUseFontBitmaps#{ENCODING}", [:pointer, :uint, :uint, :uint], :bool ],

      #BOOL wglUseFontOutlines(HDC hdc, DWORD first, DWORD count, DWORD listBase, FLOAT deviation, FLOAT extrusion, int format, LPGLYPHMETRICSFLOAT lpgmf)
      [ :UseFontOutlines, "wglUseFontOutlines#{ENCODING}", [:pointer, :uint, :uint, :uint, :float, :float, :int, GLYPHMETRICSFLOAT.ptr], :bool ]
    ]

    @functions.each do |args|
      args = args.dup
      args[1, 0] = "wgl#{args[0]}" if args.length == 3
      attach_function *args
    end
  end
end