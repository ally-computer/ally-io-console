# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ally/io/console/version'

Gem::Specification.new do |spec|
  spec.name          = 'ally-io-console'
  spec.version       = Ally::Io::Console::VERSION
  spec.authors       = ['Chad Barraford']
  spec.email         = ['cbarraford@gmail.com']
  spec.description   = %q(An ally io plugin to command line interaction)
  spec.summary       = %q(Interact with ally via the command line interface)
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_dependency 'rainbow'
  spec.add_dependency 'ally'

  # development dependencies
  spec.add_development_dependency 'bundler', '~> 1.3'
  %w( rake rspec rubocop ).each do |gem|
    spec.add_development_dependency gem
  end
end
