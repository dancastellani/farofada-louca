# coding: utf-8

require_relative 'spec_helper'

describe 'Home Page - State Links', :type => :feature do

    describe 'Direct links', :type => :feature do
        
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
    describe 'Map navigation', :type => :feature do
        
        #TODO: Put the rest of the links
        [   { :map_link => "estado_rj", :expected_content => "Rio de Janeiro"},
        { :link => "estado_sp", :expected_content => "São Paulo"}
        ].each do |test|
            it "should follow map link to page #{test[:expected_content]}" do
                visit '/'
                #page.save_screenshot('screenshot.png')
                page.execute_script(script)
                page.should have_content test[:expected_content]
            end
        end
        
    end
=end

end