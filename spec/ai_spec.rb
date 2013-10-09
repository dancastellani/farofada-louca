# coding: utf-8

require 'specs_helper'
require 'selenium-webdriver'
require 'capybara/poltergeist'

describe 'Add Insertion Page', :type => :feature, :js => true do

  it "should attach file" do
      visit '/ai/form/2'
      #require 'pry'; binding.pry

    attach_file "file", './test-capybara.jpg'
    sleep 10
    #save_and_open_page
    page.should have_content 'Foto Principal'
  end
end