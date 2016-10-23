require_relative 'lib/roglew/version'

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
  s.add_dependency 'facets', '~> 3'
  s.add_dependency 'ffi', '~> 1'
  s.add_dependency 'method_decorators', '~> 0'
end