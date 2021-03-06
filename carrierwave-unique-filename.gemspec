# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave/unique_filename/version'

Gem::Specification.new do |spec|
  spec.name          = "carrierwave-unique-filename"
  spec.version       = Carrierwave::UniqueFilename::VERSION
  spec.authors       = ["aaron\n"]
  spec.email         = ["yalong1976@gmail.com"]
  spec.description   = %q{generate unique filename for carrierwave uploader attachment}
  spec.summary       = %q{generate unique filename for carrierwave uploader attachment}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "carrierwave"
end
