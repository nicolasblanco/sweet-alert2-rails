$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sweet-alert2-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sweet-alert2-rails"
  s.version     = SweetAlert2Rails::VERSION
  s.authors     = ["Nicolas Blanco"]
  s.email       = ["nicolas@nicolasblanco.fr"]
  s.homepage    = "https://www.github.com/nicolasblanco/sweet-alert2-rails"
  s.summary     = "A Rails confirm replacement with SweetAlert2"
  s.description = "Replace the Rails system confirm box with SweetAlert2"
  s.license     = "MIT"

  s.add_development_dependency "rails", ">= 4.2"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara", "~> 2.9"
  s.add_development_dependency "pry"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ['lib']
end
