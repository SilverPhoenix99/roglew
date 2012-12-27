lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'roglew'

Gem::Specification.new do |s|
  s.name          = 'roglew'
  s.version       = Roglew::VERSION
  s.summary       = 'Ruby OpenGL and Extensions Wrapper'
  s.description   = 'A gem to wrap OpenGL and extensions in an intuitive OO framework.'
  s.authors       = %w'SilverPhoenix99 P3t3rU5'
  s.email         = %w'silver.phoenix99@gmail.com pedro.megastore@gmail.com'
  s.homepage      = 'https://github.com/SilverPhoenix99/roglew'
  s.require_paths = %w'lib'
  s.files         = Dir['{lib/**/*.rb,*.md}']
  s.add_dependency('facets', '~> 2.9')
  s.add_dependency('ffi', '~> 1.2')
  s.post_install_message = <<-eos
+----------------------------------------------------------------------------+
  Thanks for choosing Roglew.

  ==========================================================================
  #{Roglew::VERSION} Changes:
    - Corrected a bug where contexts weren't calling the run method.
    - Corrected the calls to ObjectSpace::define_finalizer.
    - Changed RenderContext#buffer_data method to accept ffi instance types
      (e.g., Struct) as a parameter and calculates the size automatically.
    - ShaderProgram#use_program can act as a bind method.
    - Optional level parameter for Texture2d#bind.
    - Data parameter is now optional for TextureContext#tex_image_2d.
    - The level can now be changed in TextureContext at any point.
    - Added the methods:
          RenderContext#buffer_sub_data
          BufferContext#sub_data methods
          ShaderProgram#attrib_location
          ShaderProgram#attrib_locations
          ShaderProgram#uniform_location
          TextureContext#tex_subimage_2d
  ==========================================================================

  If you like what you see, support us on Pledgie:
    http://www.pledgie.com/campaigns/18830

  If you find any bugs, please report them on
    https://github.com/SilverPhoenix99/roglew/issues

+----------------------------------------------------------------------------+
eos

end