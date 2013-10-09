require 'rubygems'
require 'bundler'

# To expport reports in Jenkins understandable format.

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rspec'
require 'capybara/rspec'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
  #Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.run_server = false
#Capybara.default_driver = :selenium
Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist

# dev
#Capybara.app_host = 'http://dev03c5.srv.office:21804'

# prod
Capybara.app_host = 'http://www2.bomnegocio.com'


