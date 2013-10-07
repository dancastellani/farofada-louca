# coding: utf-8

require 'helper'

describe 'Home Page', :type => :feature do

  it "should have link \'inserir anúncio grátis\'" do
    visit '/'
    page.should have_link('inserir anúncio grátis')
  end

  it "should have bomnegocio.com logo" do
    visit '/'
    page.find('.logo').find('span.text').text.should eq 'Anúncios grátis - bomnegócio.com'
  end

  it "should have message \'Tem o que pra vender?\'" do
    visit '/'
    page.should have_content('Tem o que pra vender?')
  end

  it "should have message \'A cada 1 minuto 4 coisas vendem\'" do
    visit '/'
    page.should have_content('A cada 1 minuto 4 coisas vendem')
  end
  
  it "should have balcao link (footer)" do
      visit '/'
      page.should have_link('Saiba mais sobre Balcão e bomnegócio')
      page.find('a.balcao')[:title].should eq 'Saiba mais sobre Balcão e BomNegócio'
      page.find('a.balcao')['href'].should eq 'http://www.bomnegocio.com/balcao.html'
  end
end
