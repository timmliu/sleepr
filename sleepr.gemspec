# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sleepr/version'

Gem::Specification.new do |spec|
  spec.name          = "sleepr"
  spec.version       = Sleepr::VERSION
  spec.authors       = ["Timm Liu"]
  spec.email         = ["tliu@blueskybroadcast.com"]

  spec.summary       = %q{A gem that tells you to go to sleep when you are using it after hours.}
  spec.description   = %q{Not much else to describe here.}
  spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # if spec.respond_to?(:metadata)
  #   # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  # end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
