# -*- enconding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "memerize"
  s.version     = "0.2"
  s.authors     = ["Salviano Ludgerio"]
  s.email       = ["salviano.lfg@gmail.com"]

  s.default_executable = %q{memerize}
  s.executables = ["memerize"]

  s.files = [
    ".gitignore",
    "Rakefile",
    "README.md",
    "bin/memerize",
    "lib/memerize.rb",
    "test/test_memerize.rb",
    "memerize.gemspec",
    "lib/images/cao_base.jpg",
    "lib/images/facebookgirl_base.jpg",
    "lib/images/fry_base.jpg",
    "lib/images/yuno_base.jpg",
    "lib/images/falone_base.jpg",
    "lib/images/successkid_base.jpg"
  ]

  s.summary     = %q{Gem for generate meme images and have fun.}
  s.description = %q{Memerize is a ordinary Gem for generate meme images and have fun.}

  s.homepage    = %q{http://github.com/salvianoo/memerize}

  s.add_dependency "rmagick"

  s.add_development_dependency "minitest"
  s.add_development_dependency "turn"
end
