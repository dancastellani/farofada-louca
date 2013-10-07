# Location: spec/dummy_spec.rb

require 'helper'

describe 'GitHub project page', :type => :feature do

  it "should be named capybara-selenium-rspec-seed-app" do
    visit 'https://github.com/dancastellani/capybara-selenium-rspec-seed-app'
    page.should have_content('capybara-selenium-rspec-seed-app')
  end
end

