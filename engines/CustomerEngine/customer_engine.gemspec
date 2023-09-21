require_relative "lib/customer_engine/version"

Gem::Specification.new do |spec|
  spec.name        = "customer_engine"
  spec.version     = CustomerEngine::VERSION
  spec.authors     = [""]
  spec.email       = ["max.baranov@namecheap.com"]
  spec.homepage    = ""
  spec.summary     = "Summary of CustomerEngine."
  spec.description = "Description of CustomerEngine."
  spec.license     = "MIT"


  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.8"
end
