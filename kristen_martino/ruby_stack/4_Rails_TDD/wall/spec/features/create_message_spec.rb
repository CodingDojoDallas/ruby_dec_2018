require 'rails_helper'
feature "User creates a new message" do
  before(:each) do
    visit new_user_path
    fill_in "user_username", with: "pikap3w"
    click_button "Sign In"
  end
  scenario "successfully" do
    fill_in "message_message", with: "This is a sample message"
    click_button "Post a Message"
    expect(page).to have_content "This is a sample message"
    expect(current_path).to eq(messages_path)
  end
  scenario "unsuccessfully (message field is blank)" do
    click_button "Post a Message"
    expect(page).to have_content "Message can't be blank"
    expect(current_path).to eq(messages_path)
  end
  scenario "unsuccessfully (message is too short)" do
    fill_in "message_message", with: "This"
    click_button "Post a Message"
    expect(page).to have_content "Message is too short"
    expect(current_path).to eq(new_user_path)
  end
end