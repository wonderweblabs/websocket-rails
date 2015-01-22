$:.push File.expand_path("../lib", __FILE__)
require "websocket_rails/version"

Gem::Specification.new do |s|
  s.name         = "wwl-websocket-rails"
  s.summary      = "Plug and play websocket support for ruby on rails. Includes event router for mapping javascript events to controller actions. Forked from websocket-rails by wonderweblabs."
  s.description  = "Seamless Ruby on Rails websocket integration. Forked from websocket-rails by wonderweblabs."
  s.homepage     = "https://github.com/wonderweblabs/websocket-rails"
  s.version      = WebsocketRails::VERSION
  s.platform     = Gem::Platform::RUBY
  s.authors      = [ "Alexander Schrot", "Sascha Hillig" ]
  s.email        = [ "email@wonderweblabs.com" ]
  s.license      = "MIT"

  s.files        = Dir["{lib,bin,spec}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.md", "CHANGELOG.md"]
  s.executables  = ['thin-socketrails']
  s.require_path = 'lib'

  s.add_dependency "rails"
  s.add_dependency "rack"
  s.add_dependency "faye-websocket"
  s.add_dependency "thin"
  s.add_dependency "redis"
  s.add_dependency "hiredis"
  s.add_dependency "em-synchrony"
  s.add_dependency "redis-objects"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency 'rspec-matchers-matchers'

  s.post_install_message = "Welcome to WebsocketRails v#{WebsocketRails::VERSION}!"

end
