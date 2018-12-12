require 'rails_helper'
feature "User logs out" do
  before(:each) do 
    page.set_rack_session(id:3)
    visit posts_path
  end
  scenario "successfully logs out" do
    click_on "LogOut"
    expect(page).to have_current_path(new_user_path) 
    expect{page.get_rack_session_key('id')}.to raise_error(KeyError)
  end
end