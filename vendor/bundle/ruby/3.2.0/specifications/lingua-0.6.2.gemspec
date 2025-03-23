# -*- encoding: utf-8 -*-
# stub: lingua 0.6.2 ruby lib

Gem::Specification.new do |s|
  s.name = "lingua".freeze
  s.version = "0.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Balatero".freeze]
  s.date = "2010-07-25"
  s.description = "Provides sentence splitting, syllable, and text-quality algorithms.".freeze
  s.email = "dbalatero@gmail.com".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.homepage = "http://github.com/dbalatero/lingua".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.4.19".freeze
  s.summary = "This is a maintained version of Ruby's Lingua port.".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 3

  s.add_development_dependency(%q<rspec>.freeze, [">= 1.2.9"])
end
