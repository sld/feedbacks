$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "feedbacks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "feedbacks"
  s.version     = Feedbacks::VERSION
  s.authors     = ["sld7700"]
  s.email       = ["sld7700@gmail.com"]
  s.homepage    = "https://github.com/sld/feedbacks"
  s.summary     = "Feedbacks engine for rails"
  s.description = "Contact us jquery-ui dialog window. Feedback is saving in the database
                   and sends to your email."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "jquery-rails"
  s.add_dependency "jquery-ui-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
