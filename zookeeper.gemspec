# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require 'version'

Gem::Specification.new do |s|
  s.platform                   = Gem::Platform::RUBY
  s.name                       = "zookeeper"
  s.version                    = Zookeeper::VERSION

  s.authors                    = ["David Southard"]
  s.email                      = ["nacengineer@gmail.com"]
  s.summary                    = "Monkey patches for ruby core classes"
  s.description                = "A few ruby core patches in a gem."

  s.required_ruby_version     = '>= 1.9.1'

  s.files                      = Dir.glob("{generators,lib}/**/*") + %w(LICENSE.md README.md)
  s.require_path               = 'lib'
end

