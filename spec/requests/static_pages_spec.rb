require 'spec_helper'


describe "Static pages" do
include Capybara::DSL


  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text=> 'Sample App')
    end

 	it "should have the title 'Home'" do
 		visit '/static_pages/home'
 		page.should have_selector('title', :text=> 'Third App | Home')
 	end
 end



	describe "Help page" do

     it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text=> 'Help')
     end

     it "should have the the title 'help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text=> 'Third App | Help')

    end
  end


	describe "About page" do
     it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text=> 'About')
     end

     it "should have have about in the title'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text=> 'Third App | About')
    end
  end

end