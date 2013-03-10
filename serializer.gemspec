# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "serializer"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Scott Lewis"]
  s.date = "2013-03-10"
  s.description = "Serialize and deserialize your object."
  s.email = "ryan@rynet.us"
  s.files = [".gitignore", ".rspec", "Gemfile", "Gemfile.lock", "Guardfile", "LICENSE", "README.md", "Rakefile", "VERSION", "lib/serializer.rb", "lib/serializer/error.rb", "lib/serializer/helpers.rb", "lib/serializer/interface.rb", "lib/serializer/json.rb", "lib/serializer/marshal.rb", "lib/serializer/mechanism.rb", "serializer.gemspec", "spec/serializer/helpers_spec.rb", "spec/serializer/interface_spec.rb", "spec/serializer_spec.rb", "spec/spec_helper.rb", "tmp/rspec_guard_result"]
  s.homepage = "http://github.com/RyanScottLewis/serializer"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Serializer is an interface to various serialization mechanisms."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<version>, ["~> 1.0"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 2.1"])
      s.add_development_dependency(%q<guard-yard>, ["~> 2.0"])
      s.add_development_dependency(%q<rb-fsevent>, ["~> 0.9"])
      s.add_development_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_development_dependency(%q<mocha>, ["~> 0.13"])
      s.add_development_dependency(%q<redcarpet>, ["~> 2.2.2"])
      s.add_development_dependency(%q<github-markup>, ["~> 0.7"])
    else
      s.add_dependency(%q<version>, ["~> 1.0"])
      s.add_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<guard-rspec>, ["~> 2.1"])
      s.add_dependency(%q<guard-yard>, ["~> 2.0"])
      s.add_dependency(%q<rb-fsevent>, ["~> 0.9"])
      s.add_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_dependency(%q<mocha>, ["~> 0.13"])
      s.add_dependency(%q<redcarpet>, ["~> 2.2.2"])
      s.add_dependency(%q<github-markup>, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<version>, ["~> 1.0"])
    s.add_dependency(%q<multi_json>, ["~> 1.0"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<guard-rspec>, ["~> 2.1"])
    s.add_dependency(%q<guard-yard>, ["~> 2.0"])
    s.add_dependency(%q<rb-fsevent>, ["~> 0.9"])
    s.add_dependency(%q<fuubar>, ["~> 1.1"])
    s.add_dependency(%q<mocha>, ["~> 0.13"])
    s.add_dependency(%q<redcarpet>, ["~> 2.2.2"])
    s.add_dependency(%q<github-markup>, ["~> 0.7"])
  end
end
