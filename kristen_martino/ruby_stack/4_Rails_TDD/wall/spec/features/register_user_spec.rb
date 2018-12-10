require 'rails_helper'
feature "User creates a new account" do
  before(:each) do
    visit new_user_path
  end
  scenario "successfully" do
    fill_in "user_username", with: "kristen"
    click_button "Sign In"
    expect(page).to have_content "Welcome, kristen"
    expect(current_path).to eq(messages_path)
  end
  scenario "unsuccessfully (doesn't fill out username field)" do
    click_button "Sign In"
    expect(page).to have_content "Username can't be blank"
    expect(current_path).to eq(new_user_path)
  end
  scenario "unsuccessfully (username is too short)" do
    fill_in "user_username", with: "pik"
    click_button "Sign In"
    expect(page).to have_content "Username is too short"
    expect(current_path).to eq(new_user_path)
  end
  scenario "unsuccessfully (username is taken) and is then logged in" do
    fill_in "user_username", with: "pikap3w"
    click_button "Sign In"
    expect(current_path).to eq(messages_path)
    expect(page).to have_content "Welcome, pikap3w"
  end
end