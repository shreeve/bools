# encoding: utf-8

Gem::Specification.new do |s|
  s.name        = "bools"
  s.version     = "0.5.3"
  s.author      = "Steve Shreeve"
  s.email       = "steve.shreeve@gmail.com"
  s.summary     = "Bools is a Ruby gem that makes it easy to evaluate boolean conditionals"
  s.description = "Write one method and bools will test all input combinations"
  s.homepage    = "https://github.com/shreeve/bools"
  s.license     = "MIT"
  s.files       = `git ls-files`.split("\n") - %w[.gitignore]
end
