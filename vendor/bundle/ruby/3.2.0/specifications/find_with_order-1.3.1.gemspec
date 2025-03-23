# -*- encoding: utf-8 -*-
# stub: find_with_order 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "find_with_order".freeze
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/khiav223577/find_with_order/issues", "changelog_uri" => "https://github.com/khiav223577/find_with_order/blob/master/CHANGELOG.md", "documentation_uri" => "https://www.rubydoc.info/gems/find_with_order", "homepage_uri" => "https://github.com/khiav223577/find_with_order", "source_code_uri" => "https://github.com/khiav223577/find_with_order" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["khiav reoy".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-10-19"
  s.description = "A simple way to find records in the same order of input array. Has better performance than manually sorting. Supports Rails 3+.".freeze
  s.email = ["mrtmrt15xn@yahoo.com.tw".freeze]
  s.homepage = "https://github.com/khiav223577/find_with_order".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.19".freeze
  s.summary = "A simple way to find records in the same order of input array.".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<bundler>.freeze, [">= 1.17", "< 3.x"])
  s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
  s.add_development_dependency(%q<mysql2>.freeze, [">= 0.3"])
  s.add_development_dependency(%q<pg>.freeze, ["~> 0.18"])
  s.add_runtime_dependency(%q<activerecord>.freeze, [">= 3"])
end
