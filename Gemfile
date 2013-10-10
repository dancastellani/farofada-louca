# Location: Gemfile

source "http://rubygems.org"

# Add dependencies to develop your gem here.
# Include everything needed to run rake, tests, features, etc.
group :development do
  gem 'bundler'
  gem 'rake'
  gem 'rspec', '~> 2.0'
  gem 'capybara', '~> 2.1'
  gem 'selenium-webdriver'
 gem 'selenium-client'
 gem "poltergeist", '~> 1.4'

 #to debug app. stop on line with "require 'pry'; binding.pry"
 gem 'pry'

#to save  aprint of desired page with 'save_and_open_page'
 gem 'launchy', "~> 2.3.0"
 
 # To make reports in a way Jenkins can use its information to generate trend reports
 gem 'ci_reporter'

#To save a screenshot everytime a test fails. works with selenium, webkit and poltergeist
# https://github.com/mattheworiordan/capybara-screenshot
# screenshot_and_save_page or 
gem 'capybara-screenshot'

end

