require 'rails_helper'
require 'spec_helper'

RSpec.describe "StaticPages", :type => :feature do
  describe "/static_pages" do
    it "should have the content 'Welcome to the Sample App'" do
      visit root_path
      expect(page).to have_content('Welcome to the Sample App')
    end

    it "should have the content 'StaticPages#help" do
      visit help_path
      expect(page).to have_content('StaticPages#help')
    end

    it "should have the content 'StaticPages#contact" do
      visit contact_path
      expect(page).to have_content('StaticPages#contact')
    end

    it "should have the content 'StaticPages#about" do
      visit about_path
      expect(page).to have_content('StaticPages#about')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App | About" do
      visit about_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | About')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App" do
      visit root_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App| Help'" do
      visit help_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    end

    it "should have the title 'Ruby on Rails Tutorial Sample App | Contact'" do
      visit contact_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Contact')
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end
end
