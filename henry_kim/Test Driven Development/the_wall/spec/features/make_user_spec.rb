require 'rails_helper'

feature "User creates an account" do
  before(:each) do
    visit new_user_path
  end

  scenario "successfully creates a new user account" do
    fill_in "username", with: "shanena"
    click_button "Sign In"
    expect(page).to have_content "Welcome shanena"
    # We'll be redirecting to the user show page is user succesfully created
    expect(page).to have_current_path("/messages")
  end

  scenario "unsuccessfully creates a new user account" do
    click_button "Sign In"
    expect(current_path).to eq(new_user_path)
  end

  scenario "doesn't fill out first name field" do
    click_button "Sign In"
    expect(page).to have_content "Username can't be blank"
  end

  scenario "doesn't meet minimum length" do
    fill_in "username", with: "shane"
    click_button "Sign In"
    expect(page).to have_content "Username is too short (minimum is 6 characters)"
  end

end
