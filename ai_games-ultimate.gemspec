# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ai_games/ultimate/version'

Gem::Specification.new do |spec|
  spec.name          = 'ai_games-ultimate'
  spec.version       = AiGames::Ultimate::VERSION
  spec.authors       = ['Jan David Nose']
  spec.email         = ['jandavid@awesometechnology.de']

  spec.summary = <<-EOS.gsub(/^[\s\t]*/, '').gsub(/[\s\t]*\n/, ' ').strip
    Framework and starter bot for The AI Games' Ultimate Tic Tac Toe challenge
  EOS

  spec.description = <<-EOS.gsub(/^[\s\t]*/, '').gsub(/[\s\t]*\n/, ' ').strip
    This gem provides a framework and starter bot for The AI Games' Ultimate Tic
    Tac Toe challenge. It abstracts from the low-level communication with the
    game engine and allows its users to focus on implementing their bot.
  EOS

  spec.homepage      = 'https://github.com/jdno/ai_games-ultimate'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'ai_games-logger', '~> 0.3'
  spec.add_dependency 'ai_games-parser', '~> 0.4'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
