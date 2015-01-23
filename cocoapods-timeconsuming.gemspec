# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-timeconsuming/version'

Gem::Specification.new do |spec|
  spec.name          = "cocoapods-timeconsuming"
  spec.version       = CocoapodsTimeconsuming::VERSION
  spec.authors       = ["晨燕"]
  spec.email         = ["chenyan.mnn@taobao.com"]
  spec.summary       = 'pod install 耗时统计'
  spec.description   = 'pod install 各阶段及总耗时统计'
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cocoapods"

end
