require 'rails_helper'
feature 'Add Message' do
  before(:each) do
    visit new_user_path
    fill_in 'user[name]', with: 'Elvis'
    click_button 'Sign In'
    expect(page).to have_content 'Welcome Elvis'
    expect(current_path).to eq(messages_path)
  end

  scenario 'created new message successfully' do
    fill_in 'message[content]', with: 'This is a valid message'
    click_button 'Post a Message'
    expect(page).to have_content 'This is a valid message'
    expect(current_path).to eq(messages_path)
  end

  scenario 'message input with no length' do
    fill_in 'message[content]', with: ''
    click_button 'Post a Message'
    expect(page).to have_content "Content can't be blank"
    expect(current_path).to eq(messages_path)
  end
  scenario 'message input not enough characters' do
    fill_in 'message[content]', with: 'Hello'
    click_button 'Post a Message'
    expect(page).to have_content "Content is too short (minimum is 11 characters)"
    expect(current_path).to eq(messages_path)
  end
end
