require 'rails_helper'
feature 'Login' do
  before(:each) do
    visit new_user_path
  end

  scenario 'successfully creates a new user' do
    fill_in 'user[name]', with: 'Elvis'
    click_button 'Sign In'
    expect(page).to have_content 'Welcome Elvis'
    expect(current_path).to eq(messages_path)
  end
  scenario 'login a user' do
    User.create(name:'Elvis')
    fill_in 'user[name]', with: 'Elvis'
    click_button 'Sign In'
    expect(page).to have_content 'Welcome Elvis'
    expect(current_path).to eq(messages_path)
  end

  scenario 'unable to create new user' do
    fill_in 'user[name]', with: ''
    click_button 'Sign In'
    expect(page).to have_content "Name can't be blank"
    expect(current_path).to eq(new_user_path)
  end
  scenario 'unable to create new user' do
    fill_in 'user[name]', with: 'Al'
    click_button 'Sign In'
    expect(page).to have_content "Name is too short (minimum is 5 characters)"
    expect(current_path).to eq(new_user_path)
  end
end
