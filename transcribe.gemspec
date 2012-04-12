# -*- encoding: utf-8 -*-
require File.expand_path('../lib/transcribe/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Bryan McKelvey"]
  gem.email         = ["bryan.mckelvey@gmail.com"]
  gem.description   = %q{Transcribes a language into IPA}
  gem.summary       = %q{Transcribes a language into IPA}
  gem.homepage      = "https://github.com/brymck/transcribe"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "transcribe"
  gem.require_paths = ["lib"]
  gem.version       = Transcribe::VERSION
end
