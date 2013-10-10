require 'rubygems'
require 'bundler'

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

require 'capybara-screenshot'
require 'capybara-screenshot/rspec'
Capybara::Screenshot.register_filename_prefix_formatter(:rspec) do |example|
    "screenshot_#{example.description.gsub(' ', '-').gsub(/^.*\/spec\//,'')}"
end

Capybara.default_wait_time = 5
Capybara.save_and_open_page_path = "temp/test-error-screenshots/"

require 'capybara/poltergeist'
Capybara.run_server = false
#Capybara.default_driver = :selenium
Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist

# prod
Capybara.app_host = 'http://www2.bomnegocio.com'


