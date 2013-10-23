require 'spec_helper'

describe "HomePage", :type => :feature do
  describe "When I visit the homepage" do
    it "should have a welcome message" do
      visit root_path
      expect(page).to have_content("Welcome to my website")
    end
  end
  describe "When user click the about page link" do
    it "should take user to about page" do
      visit root_path
      find_link('About').click
      expect(page).to have_content("About Us")
    end
  end
  describe "When user click the contact page link" do
    it "should take user to contact page" do
      visit root_path
      find_link('Contact').click
      expect(page).to have_content("Contact Us")
    end
  end
  describe "When user click the blog page link" do
    it "should take user to blog page" do
      visit root_path
      find_link('Blog').click
      expect(page).to have_content("Blog")
    end
  end
  describe "When user click the photos page link" do
    it "should take user to photos page" do
      visit root_path
      find_link('Photos').click
      expect(page).to have_content("Photos")
    end
  end
  describe "When user click the links page link" do
    it "should take user to links page" do
      visit root_path
      find_link('Links').click
      expect(page).to have_content("Links")
    end
  end
end
