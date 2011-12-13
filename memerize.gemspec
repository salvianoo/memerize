# -*- enconding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "memerize"
  s.version     = "0.1"
  s.authors     = ["Salviano Ludgerio"]
  s.email       = ["salviano.lfg@gmail.com"]
  s.summary     = %q{Gem for generate meme images and have fun.}
  s.description = %q{Memerize is a ordinary Gem for generate meme images and have fun.}

  s.rubyforge_project = "memerize"

  s.add_dependency "rmagick"

  s.add_development_dependency "minitest"
  s.add_development_dependency "turn"
end
