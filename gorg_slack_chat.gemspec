$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gorg_slack_chat/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gorg_slack_chat"
  s.version     = GorgSlackChat::VERSION
  s.authors     = ["Alexandre Narbonne"]
  s.email       = ["alexandre.narbonne@gadz.org"]
  s.homepage    = "https://github.com/gadzorg/gorg_slack_chat"
  s.summary     = "Brings SlackChat to Gadz.org apps"
  s.description = "Brings https://github.com/improvi/slack-chat to Gadz.org apps"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.2.3"
  s.add_dependency "gon","~> 6.1.0"
  s.add_dependency "jquery-rails","~> 4.2.2"
  s.add_dependency "jquery-ui-rails","~> 6.0.1"

end
