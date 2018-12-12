require 'rails_helper'
feature 'User features ' do
  before do
    # calling factory girl create method
    @user = create(:user)
  end

  feature "user sign-up" do
    before(:each) do
      visit "/users/new"
    end

    scenario 'visits sign-up page' do
      expect(page).to have_field('Name')
      expect(page).to have_field('Email')
      expect(page).to have_field('Password')
      expect(page).to have_field('Password_Confirmation')
    end

    scenario "with improper inputs, redirects back to sign in and shows validations" do
      click_button 'Join'
      expect(current_path).to eq('/users/new')
      expect(page).to have_text("Email is invalid")
      expect(page).to have_text("Email can't be blank")
      expect(page).to have_text("Name can't be blank")
      expect(page).to have_text("Password can't be blank")
      expect(page).to have_text("Password can't be blank")
    end

    scenario "with proper inputs, create user and redirects to profile page" do
      fill_in 'Email', with: 'curry@warriors.com'
      fill_in 'Name', with: 'curry'
      fill_in 'Password', with:  'password'
      fill_in 'Password_Confirmation', with: 'password'
      click_button 'Join'
      expect(current_path).to eq("/users/#{@user.id+1}")
    end
  end

  feature "user dashboard" do
    before do
      log_in
    end

    scenario "displays user information" do
      expect(page).to have_text("#{@user.name}")
      expect(page).to have_link('Edit Profile')
    end
  end

end
