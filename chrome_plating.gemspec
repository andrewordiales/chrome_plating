$:.push File.expand_path("../lib", __FILE__)

require 'chrome_plating/version'

Gem::Specification.new do |s|
  s.name          = 'chrome_plating'
  s.version       = ChromePlating::VERSION
  s.date          = '2012-11-06'
  s.summary       = 'Chromedriver Binary for Mac OS X & 64-bit Linux'
  s.description   = 'Chromedriver Binary for Mac OS X & 64-bit Linux'

  s.authors       = ['Andy']
  s.email         = ['andrew@friendster.com']
  s.homepage      = 'http://github.com/andruandru/chrome_plating'

  s.require_paths = ['lib']
  s.files         = Dir.glob("{lib,bin,vendor}/**/*") #`git ls-files`.split("\n")
  s.executables   << 'chromedriver'

  s.test_files   = Dir.glob("{spec}/**/*")
  s.add_development_dependency("rspec")

end