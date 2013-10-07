# coding: utf-8

require 'helper'

Capybara.app_host = 'http://bomnegocio.com'

describe 'Home Page', :type => :feature do

  it "should have link \'inserir anúncio grátis\'" do
    visit '/'
    page.should have_link('inserir anúncio grátis')
  end

  it "should have bomnegocio.com logo" do
    visit '/'
    page.find('.logo').find('span.text').text == 'Anúncios grátis - bomnegócio.com'
  end

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

  it "when click RJ should have Rio de Janeiro text" do
    visit '/'
    click_link('RJ')
    page.should have_content('Rio de Janeiro')
  end
end

