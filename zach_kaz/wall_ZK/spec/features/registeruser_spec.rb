require 'rails_helper'
feature "User creates an account" do
  before(:each) do 
    visit new_user_path
  end
  scenario "successfully creates a new user account" do
    fill_in "user[username]", with: "shane"
    click_button "Sign in"
    expect(page).to have_content "Welcome, shane"
    expect(page).to have_current_path(posts_path)   
  end
  scenario "unsuccessfully creates a new user account" do 
    click_button "Sign in"
    expect(current_path).to eq(new_user_path)
  end
  scenario "doesn't fill out username" do 
    click_button "Sign in"
    expect(page).to have_content "username can't be blank"
  end
end