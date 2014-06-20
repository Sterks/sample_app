require 'rails_helper'
require 'spec_helper'

describe "User pages", :type => :feature do

  subject { page }

  describe "signup page" do
    before { visit singup_path }

    it { should have_content('Sing Up') }
    it { should have_title(full_title('Sing up')) }
  end
end
