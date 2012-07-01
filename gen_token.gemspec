# -*- encoding: utf-8 -*-
require File.expand_path("../lib/gen_token/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "gen_token"
  s.version     = GenToken::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Graeme Rouse"]
  s.email       = ["graeme@arizonabay.com"]
  s.homepage    = "http://www.arizonabay.com"
  s.summary     = "Simply generates a unique token in a database."
  s.description = "Point GenToken at a database column and it will generate a random and unique key for the field. "

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "gen_token"

  s.add_development_dependency "bundler", ">= 1.0.0"

  ignores = File.readlines(".gitignore").grep(/\S+/).map {|s| s.chomp }
  dotfiles = %w(.gemtest .gitignore .rspec .yardopts)
  s.files = Dir["**/*"].reject {|f| File.directory?(f) || ignores.any? {|i| File.fnmatch(i, f) } } + dotfiles

  s.require_path = 'lib'
end
