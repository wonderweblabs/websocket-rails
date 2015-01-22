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
  s.executables  = "wsr"

  s.files        = Dir["{lib,spec}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.md", "CHANGELOG.md"]
  s.require_path = 'lib'

  #s.add_runtime_dependency "websocket-rails-js"
  s.add_runtime_dependency "rails"
  s.add_runtime_dependency "rack"
  s.add_runtime_dependency "faye-websocket"
  s.add_runtime_dependency "redis"
  s.add_runtime_dependency "hiredis"
  s.add_runtime_dependency "uuidtools"
  s.add_runtime_dependency "connection_pool"
  s.add_runtime_dependency "puma"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec-rails", "~> 2.14.0"

  s.post_install_message = "Welcome to WebsocketRails v#{WebsocketRails::VERSION}!"

end
