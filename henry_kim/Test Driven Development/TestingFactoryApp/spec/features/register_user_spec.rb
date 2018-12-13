require 'rails_helper'
feature "User creates an account" do
  scenario "successfully creates a new user account" do
    register_user
    expect(page).to have_content "Welcome, shane"
    expect(page).to have_current_path(user_path(User.last))
  end
  scenario "unsuccessfully creates a new user account" do
    register_user first_name: '', last_name: '', email: ''
    expect(current_path).to eq(new_user_path)
  end
  scenario "doesn't fill out first name field" do
    register_user first_name: ''
    expect(page).to have_content "First name can't be blank"
  end
  scenario "doesn't fill out last name field" do
    register_user last_name: ''
    expect(page).to have_content "Last name can't be blank"
  end
  scenario "doesn't fill out email field" do
    register_user email: ''
    expect(page).to have_content "Email can't be blank"
  end
end
