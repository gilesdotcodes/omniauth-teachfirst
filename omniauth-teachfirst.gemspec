
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-teachfirst/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-teachfirst"
  spec.version       = OmniAuth::TeachFirst::VERSION
  spec.authors       = ["Stephen Giles"]
  spec.email         = ["stephengiles.uk@gmail.com"]

  spec.summary       = %q{OmniAuth Strategy for Teach First}
  spec.description   = %q{OmniAuth Strategy for Teach First. This allows you to login to TeachFirst with your ruby app.}
  spec.homepage      = "https://github.com/gilesdotcodes/omniauth-teachfirst"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.3'

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'omniauth', '>= 1.1.1'
  spec.add_dependency 'omniauth-oauth2', '>= 1.5', '< 2.0'
end
