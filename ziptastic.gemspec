# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ziptastic/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Cooper Maruyama"]
  gem.email         = ["cooperm@susteen.com"]
  gem.description   = %q{Ruby port of Thomas Schultz's Ziptastic API}
  gem.summary       = %q{Ruby port of Thomas Schultz's Ziptastic API}
  gem.homepage      = "TO DO"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ziptastic"
  gem.require_paths = ["lib"]
  gem.version       = Ziptastic::VERSION
  
  gem.add_dependency("sinatra")
  gem.add_dependency("sinatra-contrib")
  gem.add_dependency("multi_json")
  gem.add_dependency("vegas")
  gem.add_development_dependency("rspec", "~> 2.9.0")
end
