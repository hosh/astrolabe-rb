require File.join([File.dirname(__FILE__),'lib','astrolabe','version.rb'])

Gem::Specification.new do |s|
  s.name        = "astrolabe-rb"
  s.version     = Astrolabe::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ho-Sheng Hsiao"]
  s.email       = ["hosheng.hsiao@gmail.com"]
  s.homepage    = "http://github.com/hosh/astrolabe-rb"
  s.summary     = "Astrological astrolabe, using libnova"
  s.description = "Astrolabe used for astrological analysis. Uses libnova (VSO87 Theory)"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "astrolabe-rb"

  s.add_dependency "libnova-ffi"
  s.add_dependency "thor"
  s.add_dependency "rlet"
  s.add_dependency "ffi"

  s.add_development_dependency "rspec"

  s.files        = Dir.glob("{lib}/**/*") + %w(LICENSE README.md)
  #s.executables  = ['astrolabe']
  s.require_path = 'lib'
end
