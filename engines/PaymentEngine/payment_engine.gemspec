require_relative "lib/payment_engine/version"

Gem::Specification.new do |spec|
  spec.name        = "payment_engine"
  spec.version     = PaymentEngine::VERSION
  spec.authors     = [""]
  spec.email       = ["elcaribe1996@gmail.com"]
  spec.summary     = "Summary of PaymentEngine."
  spec.description = "Description of PaymentEngine."
  spec.license     = "MIT"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.8"
end
