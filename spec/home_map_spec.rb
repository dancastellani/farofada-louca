# coding: utf-8

require 'helper'

describe 'Home Page::State Links', :type => :feature do
    
    #TODO: Put the rest of the links
    [   { :link => "RJ", :expected_content => "Rio de Janeiro"},
        { :link => "SP", :expected_content => "São Paulo"}
    ].each do |test|
        it "should follow link #{test[:link]} to page #{test[:expected_content]}" do
            visit '/'
            click_link test[:link]
            page.should have_content test[:expected_content]
        end
    end
    
end

=begin
describe 'Home Page::Maps Links', :type => :feature do
    
    #TODO: Put the rest of the links
    [   { :link => "RJ", :expected_content => "Rio de Janeiro"},
    { :link => "SP", :expected_content => "São Paulo"}
    ].each do |test|
        it "should follow link #{test[:link]} to page #{test[:expected_content]}" do
            visit '/'
            click_link test[:link]
            page.should have_content test[:expected_content]
        end
    end
    
end
=end