
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require('passwd_group')

Gem::Specification.new do |spec|
  spec.name          = 'passwd_group'
  spec.version       = PasswdGroup::VERSION
  spec.authors       = ['Glutexo']
  spec.email         = ['glutexo@icloud.com']

  spec.summary       = 'A simple tool to manipulate the passwd and group files'
  spec.homepage      = 'https://github.com/Glutexo/passwd_group'
  spec.license       = 'MIT'
end
