require 'rails_helper'
feature "user creates a new account" do
  scenario "successfully" do
    visit new_user_path
    fill_in "user_username", with: "pikap3w"
    click_button "Sign In"
    expect(page).to have_content "User successfully created"
  end
end