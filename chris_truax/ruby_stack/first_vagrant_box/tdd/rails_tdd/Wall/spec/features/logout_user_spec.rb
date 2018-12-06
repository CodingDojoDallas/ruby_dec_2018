require 'rails_helper'
feature 'Logout User' do
  before(:each) do
    visit new_user_path
    fill_in 'user[name]', with: 'Elvis'
    click_button 'Sign In'
    expect(page).to have_content 'Welcome Elvis'
    expect(current_path).to eq(messages_path)
  end

  scenario 'user should log out' do
    click_on 'Logout'
    expect(current_path).to eq(new_user_path)
    visit messages_index_path
    expect(current_path).to eq(new_user_path)
  end
  scenario 'user should log out 2' do
    click_on 'Logout'
    # expect(current_path).to eq(new_user_path)
    visit messages_index_path
    expect(current_path).to eq(new_user_path)
  end
end
