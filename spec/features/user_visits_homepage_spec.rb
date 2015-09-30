require "rails_helper"

RSpec.feature "User visits homepage", :type => :feature do
  scenario "successfully", :js => true do
    visit root_path

    expect(page).to have_text("Welcome to Selfie There")
  end
end