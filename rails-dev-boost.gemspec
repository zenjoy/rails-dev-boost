# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rails-dev-boost"
  spec.version       = "0.2.1.zenjoy"
  spec.authors       = ["Roman Le Negrate", "thedarkone", "Zenjoy"]
  spec.email         = ["roman.lenegrate@gmail.com"]
  spec.summary       = %q{ Speeds up Rails development mode }
  spec.description   = %q{ Make your Rails app 10 times faster in development mode }
  spec.homepage      = "https://github.com/zenjoy/rails-dev-boost"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"

  spec.add_dependency 'railties', '>= 3.0'
  spec.add_dependency 'listen',   '>= 0.5'

end