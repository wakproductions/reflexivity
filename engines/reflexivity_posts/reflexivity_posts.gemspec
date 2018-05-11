$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "reflexivity_posts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "reflexivity_posts"
  s.version     = ReflexivityPosts::VERSION
  s.authors     = ["Winston Kotzan"]
  s.email       = ["wak@wakproductions.com"]
  s.homepage    = "https://wakproductions.github.com"
  s.summary     = "Video listing component of Reflexivity CMS"
  s.description = "Video listing component of Reflexivity CMS"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"
end
