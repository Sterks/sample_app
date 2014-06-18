require 'rails_helper'
require 'spec_helper'

RSpec.describe "StaticPages", :type => :feature do
  describe "/static_pages/home" do
    it "should have the content 'StaticPages#home'" do
      visit '/static_pages/home'
      expect(page).to have_content('StaticPages#home')
    end

    it "should have the content 'StaticPages#help" do
      visit '/static_pages/help'
      expect(page).to have_content('StaticPages#help')
    end

    it "should have the content 'StaticPages#contact" do
      visit '/static_pages/contact'
      expect(page).to have_content('StaticPages#contact')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App | Home" do
      visit '/static_pages/home'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App| Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App | Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Contact')
    end
  end
end
