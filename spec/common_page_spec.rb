# coding: utf-8

require 'helper'

Capybara.app_host = 'http://www.bomnegocio.com'

describe 'Common Page', :type => :feature do

  internal_page = '/rio_de_janeiro'

  it "should have categories" do
    visit internal_page
    page.should have_content('Busca por categorias')
  end

  it "should have category \'Moda e beleza\'" do
    visit internal_page
    page.should have_content('Moda e beleza')
  end

end

