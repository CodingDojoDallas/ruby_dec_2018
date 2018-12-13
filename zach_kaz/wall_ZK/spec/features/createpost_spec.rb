require 'rails_helper'
feature "User creates a message" do
  before(:each) do 
    page.set_rack_session(id:1)
    User.create(username:'georgefisher')
    visit posts_path
  end
  scenario "successfully creates a message" do
    fill_in "post[content]", with: "this is a test message"
    click_button "Create Post"
    expect(page).to have_content "this is a test message"
    expect(page).to have_current_path(posts_path)    
  end
  scenario "unsuccessfully creates a message" do 
    click_button "Create Post"
    expect(page).to have_current_path(posts_path)    
  end
  scenario "doesn't write post message" do 
    click_button "Create Post"
    expect(page).to have_content "too short"
  end
end