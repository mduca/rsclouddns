# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rsclouddns/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["mduca"]
  gem.email         = ["michael@mandu.ca"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rsclouddns"
  gem.require_paths = ["lib"]
  gem.version       = Rsclouddns::VERSION

  gem.add_dependency "httparty"
  gem.add_dependency "hashugar"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "guard-rspec"
  gem.add_development_dependency "webmock"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "turn"
  gem.add_development_dependency "vcr"

end
