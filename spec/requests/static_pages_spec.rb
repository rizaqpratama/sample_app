require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the h1 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('h1',:text=>"Sample App")
    end

    it "should hav the right title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',:text =>" | Home")
    end
  end

  describe "Help page" do
  	it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1',:text=>"Sample App")
    end

    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',:text =>" | Help")
    end
  end

  

  describe "About page" do
  	it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1',:text=>"Sample App")
    end

    it "should hav the right title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',:text =>" | About")
    end
  end
  


end
