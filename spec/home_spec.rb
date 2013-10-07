# Location: spec/dummy_spec.rb

require 'helper'

Capybara.app_host = 'http://bomnegocio.com'

describe 'Home Page', :type => :feature do

  it "should have message \'Tem o que pra vender?\'" do
    visit '/'
    page.should have_content('Tem o que pra vender?')
  end

  it "should have a link to RJ state" do
    visit '/'
    page.should have_link('RJ')
  end

  it "should have message \'A cada 1 minuto 4 coisas vendem\'" do
    visit '/'
    page.should have_content('A cada 1 minuto 4 coisas vendem')
  end
end

