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
Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, [:js_errors => true])
end

case ENV['BROWSER']
  when 'chrome'
  	puts "Capybara: Using Selenium Chrome Driver"
    Capybara.default_driver = Capybara.javascript_driver = :selenium_chrome
  when 'firefox'
  	puts "Capybara: Using Selenium Firefox Driver"
    Capybara.default_driver = Capybara.javascript_driver = :selenium_firefox
  else
  	puts "Capybara: Using Poltergeist (headless) Driver"
    Capybara.default_driver = Capybara.javascript_driver = :poltergeist
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

# prod
Capybara.app_host = 'http://www2.bomnegocio.com'


