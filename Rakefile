# Location: Rakefile

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

# To expport reports in Jenkins understandable format.
require 'ci/reporter/rake/rspec'
require 'rake'
require 'rspec/core/rake_task'
desc "Run specs"
RSpec::Core::RakeTask.new(:features => ["ci:setup:rspec"]) do |t|
  #t.pattern = "./spec/**/*_spec.rb" # don't need this, it's default.
  # Put spec opts in a file named .rspec in root
  
end

task :default => :features

