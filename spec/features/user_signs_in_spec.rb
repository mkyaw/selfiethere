# spec/features/user_signs_in_spec.rb

require "rails_helper"

RSpec.feature "User signs in", :type => :feature do
  scenario "successfully", :js => true do
    user = FactoryGirl.build(:user)

    visit "/users/sign_in"
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Log in"
    
    expect(page).to have_text("Signed in successfully.")
  end
end