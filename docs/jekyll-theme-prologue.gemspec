# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "settimana-bianca"
  spec.version       = "0.0.1"
  spec.authors       = ["HTML5 UP", "Chris Bobbe", "Michele Alberti"]
  spec.email         = [""]

  spec.summary       = %q{A Jekyll version of the Prologue theme by HTML5 UP.}
  spec.description   = "A Jekyll version of the Prologue theme by HTML5 UP. Edited for rufusxx's settimana_bianca website"
  spec.homepage      = "https://github.com/rufusxx/settimana_bianca"
  spec.license       = "CC-BY-4.0"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|_config.yml|404.html|LICENSE|README)}i) }

  spec.add_development_dependency "jekyll", "~> 4.3"
  spec.add_development_dependency "bundler", "~> 2.5"
end
