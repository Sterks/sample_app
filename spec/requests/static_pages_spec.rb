require 'rails_helper'
require 'spec_helper'

describe "StaticPages", :type => :feature do
  subject {page}

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Welcome to the Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('StaticPages#help') }
    it { should have_title(full_title('Help')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should_not have_selector('h1', text: 'Contact') }
    it { should have_title(full_title('Contact')) }
  end

  describe "About" do
    before { visit about_path }

    it { should have_content('StaticPages#about') }
    it { should have_title(full_title('About')) }
  end

  describe "StaticPages" do
    it "should have the right links on the layout" do
    visit root_path
    click_on 'About'
    expect(page).to have_title(full_title('About'))
    click_on 'Help'
    expect(page).to have_title(full_title('Help'))
    click_on 'Contact'
    expect(page).to have_title(full_title('Contact'))
    end
  end
end


