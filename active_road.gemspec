# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "active_road/version"

Gem::Specification.new do |s|
  s.name        = "active_road"
  s.version     = ActiveRoad::VERSION
  s.authors     = ["Alban Peignier", "Luc Donnet"]
  s.email       = ["apeignier@free.fr", "luc.donnet@free.fr"]
  s.homepage    = ""
  s.summary     = %q{Manage roads for Rails}
  s.description = %q{Find street numbers and road ways}

  s.rubyforge_project = "activeroad"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
 
  s.add_development_dependency "guard", "~> 1.5.0"
  s.add_development_dependency "guard-bundler"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "factory_girl_rails", '1.7.0'
  s.add_development_dependency "simplecov"
  s.add_development_dependency "rspec-rails", "~> 2.11.4"

  s.add_dependency 'rails', '~> 3.2.8'
  s.add_dependency 'activerecord'
  s.add_dependency 'pg', '>= 0.11.0'
  s.add_dependency 'activerecord-postgis-adapter', '>= 0.5'
  s.add_dependency 'shortest_path'
  s.add_dependency 'ar_pg_array'
  s.add_dependency 'nokogiri'
  s.add_dependency 'saxerator'
  s.add_dependency 'apartment'
end
