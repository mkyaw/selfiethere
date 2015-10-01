require "rails_helper"

RSpec.feature "User signs up", :type => :feature do
  scenario "successfully", :js => true do
    visit "/users/sign_up"

    fill_in "Email", :with => "myok@email.com"
    fill_in "Password", :with => "password"
    fill_in "Password confirmation", :with => "password"
    
    click_button "Sign up"

    expect(page).to have_text("successfully")
  end
end