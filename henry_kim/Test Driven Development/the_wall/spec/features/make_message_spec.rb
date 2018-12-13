require 'rails_helper'

feature "User creates a message" do
  before(:each) do
    User.create(username:"tester")
    page.set_rack_session(user: User.last.id)
    visit '/messages'
  end


  scenario "successfully creates a new message account" do
    fill_in "content", with: "12345678910"
    click_button "Post a Message"
    expect(page).to have_content "12345678910"
    # We'll be redirecting to the user show page is user succesfully created
    expect(page).to have_current_path("/messages")
  end

  scenario "unsuccessfully creates a message" do
    click_button "Post a Message"
    expect(current_path).to eq("/messages")
  end

  scenario "doesn't fill out content field" do
    click_button "Post a Message"
    expect(page).to have_content "Content can't be blank"
  end

  scenario "doesn't match minimum length" do
    fill_in "content", with: "shane"
    click_button "Post a Message"
    expect(page).to have_content "Content is too short (minimum is 11 characters)"
  end

  scenario "has logout button" do
    expect(page).to have_content "Log Out"
  end

  scenario "logout redirects to users" do
    click_on "Log Out"
    expect(current_path).to eq("/users/new")
  end

  scenario "logout clears session" do
    click_on "Log Out"
    expect{page.get_rack_session_key('user')}.to raise_error(KeyError)
  end

end
