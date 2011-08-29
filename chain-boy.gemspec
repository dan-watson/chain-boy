# -*- encoding: utf-8 -*-
require File.expand_path('../lib/chain-boy/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dan Watson"]
  gem.email         = ["dan@dotnetguy.co.uk"]
  gem.description   = %q{Dynamic delegator - created from the information demonstrated in RailsCasts episode 212}
  gem.summary       = %q{Think of DynamicDelegator as a proxy object that passes any calls to it to its target object}
  gem.homepage      = "https://github.com/dotnetguyuk/chain-boy"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "chain-boy"
  gem.require_paths = ["lib"]
  gem.version       = Chain::Boy::VERSION

end
