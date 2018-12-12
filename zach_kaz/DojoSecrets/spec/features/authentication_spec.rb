require 'rails_helper'
feature 'authentication feature' do
  feature "user attempts to sign-in" do
    before(:each) do 
      x=build(:user)
      x.save
      visit login_path
    end
    scenario 'visits sign-in page, prompted with email and password fields' do
      expect(page.find_field('email')) 
      expect(page.find_field('password'))
    end
    scenario 'logs in user if email/password combination is valid' do
      fill_in "email", with: "bob@bob.bob"
      fill_in "password", with: "password"
      click_button "loginbutton"
      expect(page).to have_current_path(users_index_path(User.last))
    end
    scenario 'does not sign in user if email is not found'do
    fill_in "email", with: "9999999999999999999@9999999999999999.edu"
    click_button "loginbutton"
    expect(page).to have_content("Email was not found in database")
    end
    scenario 'does not sign in user if email/password combination is invalid' do
      fill_in "email", with: "bob@bob.bob"
      fill_in "password", with: "1234567"
      click_button "loginbutton"
      expect(page).to have_content("Invalid")
    end
  end
  feature "user attempts to log out" do
    before(:each) do
      x=build(:user)
      x.save
      visit login_path
      fill_in "email", with: "bob@bob.bob"
      fill_in "password", with: "password"
      click_button "loginbutton"
    end
    scenario 'displays "Log Out" button when user is logged on' do
    expect(page.find_button('Log Out'))
    end
    scenario 'logs out user and redirects to login page' do
      click_button 'Log Out'
    expect(page).to have_current_path(login_path)
    end
  end
end