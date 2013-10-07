# Location: spec/dummy_spec.rb

require 'helper'

describe 'Home Page', :type => :feature do

  it "should have message \'Tem o que pra vender?\'" do
    visit 'http://www.bomnegocio.com'
    page.should have_content('Tem o que pra vender?')
  end

  it "should have a link to RJ state" do
    visit 'http://www.bomnegocio.com'
    page.should have_link('RJ')
  end
end

