# coding: utf-8

require 'helper'
require 'selenium-webdriver'
require 'capybara/poltergeist'

describe 'Add Insertion Page', :type => :feature, :js => true do

  it "should attach file" do
      visit '/ai/form/2'
      #      elem = find('#image_upload_button input')
      #require 'pry'; binding.pry

    attach_file "file", './test-capybara.jpg'
    sleep 10
    #save_and_open_page
  end
end