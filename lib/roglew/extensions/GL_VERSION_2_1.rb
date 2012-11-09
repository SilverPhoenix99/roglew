module Roglew
  module GL
    COMPRESSED_SLUMINANCE          ||= 0x8C4A
    COMPRESSED_SLUMINANCE_ALPHA    ||= 0x8C4B
    COMPRESSED_SRGB                ||= 0x8C48
    COMPRESSED_SRGB_ALPHA          ||= 0x8C49
    CURRENT_RASTER_SECONDARY_COLOR ||= 0x845F
    FLOAT_MAT2x3                   ||= 0x8B65
    FLOAT_MAT2x4                   ||= 0x8B66
    FLOAT_MAT3x2                   ||= 0x8B67
    FLOAT_MAT3x4                   ||= 0x8B68
    FLOAT_MAT4x2                   ||= 0x8B69
    FLOAT_MAT4x3                   ||= 0x8B6A
    PIXEL_PACK_BUFFER              ||= 0x88EB
    PIXEL_PACK_BUFFER_BINDING      ||= 0x88ED
    PIXEL_UNPACK_BUFFER            ||= 0x88EC
    PIXEL_UNPACK_BUFFER_BINDING    ||= 0x88EF
    SLUMINANCE                     ||= 0x8C46
    SLUMINANCE_ALPHA               ||= 0x8C44
    SLUMINANCE8                    ||= 0x8C47
    SLUMINANCE8_ALPHA8             ||= 0x8C45
    SRGB                           ||= 0x8C40
    SRGB_ALPHA                     ||= 0x8C42
    SRGB8                          ||= 0x8C41
    SRGB8_ALPHA8                   ||= 0x8C43
  end
end

module GL_VERSION_2_1
  module RenderContext
    include Roglew::GLExtension

    functions [:glUniformMatrix2x3fv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix2x4fv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix3x2fv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix3x4fv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix4x2fv, [ :int, :int, :uchar, :pointer ], :void],
              [:glUniformMatrix4x3fv, [ :int, :int, :uchar, :pointer ], :void]
  end
end