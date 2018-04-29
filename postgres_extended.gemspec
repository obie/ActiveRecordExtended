
# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

require "postgres_extended/version"

Gem::Specification.new do |spec|
  spec.name          = "postgres_extended"
  spec.version       = PostgresExtended::VERSION
  spec.authors       = ["George Protacio-Karaszi"]
  spec.email         = ["georgekaraszi@gmail.com"]

  spec.summary       = "Adds extended functionality to Activerecord Postgres implementation"
  spec.description   = "Adds extended functionality to Activerecord Postgres implementation"
  spec.homepage      = "https://github.com/georgekaraszi/postgres_extended"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- spec/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 5.0", "< 6"
  spec.add_dependency "pg", "~> 0.18"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "database_cleaner", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end