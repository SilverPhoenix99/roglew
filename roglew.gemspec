lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'roglew'

Gem::Specification.new do |s|
  s.name          = 'roglew'
  s.version       = Roglew::VERSION
  s.summary       = 'Ruby OpenGL and Extensions Wrapper'
  s.description   = 'A gem to wrap OpenGL and extensions in an intuitive OO framework.'
  s.license       = 'MIT'
  s.authors       = %w'SilverPhoenix99 P3t3rU5'
  s.email         = %w'silver.phoenix99@gmail.com pedro.megastore@gmail.com'
  s.homepage      = 'https://github.com/SilverPhoenix99/roglew'
  s.require_paths = %w'lib'
  s.files         = Dir['{lib/**/*.rb,*.md}']
  s.add_dependency('facets', '~> 2.9')
  s.add_dependency('ffi', '~> 1.2')
  s.add_dependency('method_decorators', '~> 0.9')
  s.post_install_message = <<-eos
+----------------------------------------------------------------------------+
  Thank you for choosing Roglew.

  ==========================================================================
  #{Roglew::VERSION} Codename #{Roglew::VERSION_CODENAME}

  Changes:
    - Separated rendering into RenderHandle (native layer) and RenderContext
      (Ruby layer).
    - WARNING: Ruby layer is incompatible with previous versions. Native
      layer can still be called through RenderHandle.
  ==========================================================================

  If you like what you see, support us on Pledgie:
    http://www.pledgie.com/campaigns/18830

  If you find any bugs, please report them on
    https://github.com/SilverPhoenix99/roglew/issues

+----------------------------------------------------------------------------+
eos

end