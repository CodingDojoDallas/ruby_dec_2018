require 'rails_helper'
feature 'User features ' do
  feature "user sign-up" do
    before(:each) do
        visit users_new_path
    end
    scenario 'visits sign-in page' do
        expect(page.find_field('user_name')) 
        expect(page.find_field('user_email')) 
        expect(page.find_field('user_password')) 
        expect(page.find_field('user_confirmpassword')) 
        expect(page.find_button('joinbutton'))
        expect(page).to have_current_path(users_new_path)
    end
    feature "with improper inputs, redirects back to sign in and shows validations" do
        scenario "empty fields return cant be blank errors" do
            fill_in "user_name", with: ""
            fill_in "user_email", with: ""
            fill_in "user_password", with: ""
            fill_in "user_confirmpassword", with: ""
            click_button('joinbutton')
            expect(page).to have_content("name can't be blank")
            expect(page).to have_content("email can't be blank")
            expect(page).to have_content("password can't be blank")
            expect(page).to have_current_path(users_new_path)
        end
        scenario 'password and confirm password must match' do
            fill_in "user_name", with: "Jeff"
            fill_in "user_email", with: "jeff@jeff.jeff"
            fill_in "user_password", with: "12345"
            fill_in "user_confirmpassword", with: "1234"
            click_button('joinbutton')
            expect(page).to have_content("Your passwords did not match")
            expect(page).to have_current_path(users_new_path)
        end
        scenario 'email entered does not have a valid format' do
            fill_in "user_name", with: "Jeff"
            fill_in "user_email", with: "bobsemail"
            fill_in "user_password", with: "12345"
            fill_in "user_confirmpassword", with: "12345"
            click_button('joinbutton')
            expect(page).to have_content("email is invalid")
            expect(page).to have_current_path(users_new_path)
        end
    end
    scenario "with proper inputs, create user and redirects to users page" do
        fill_in "user_name", with: "Jeff"
        fill_in "user_email", with: "jeff@jeff.com"
        fill_in "user_password", with: "12345"
        fill_in "user_confirmpassword", with: "12345"
        click_button('joinbutton')
        expect(page).to have_current_path(secrets_index_path)
    end
  end
  feature "user dashboard" do 
    before(:each) do
        x=build(:user)
        x.save  
        visit login_path
        fill_in "email", with: "bob@bob.bob"
        fill_in "password", with: "password"
        click_button "loginbutton"
    end
    scenario "displays user information" do
    visit users_index_path(User.last)
    expect(page).to have_content("JohnJacobJinglheimmerSchimidt")
    expect(page).to have_content("bob@bob.bob")
    end
    feature "User Settings Dashboard" do
        before(:each) do
            visit users_edit_path(User.last)
        end
        scenario "visit users edit page" do
        expect(page).to have_current_path(users_edit_path(User.last))
        end
        scenario "inputs filled out correctly" do
        expect(page.find_field("user_name").value).to eq("JohnJacobJinglheimmerSchimidt")
        expect(page.find_field("user_email").value).to eq("bob@bob.bob")
        end
        scenario "incorrectly updates information" do
            fill_in "user_name", with: ""
            fill_in "user_email", with: ""
            click_button('edituserbutton')
            expect(page).to have_current_path(users_edit_path(User.last))
            expect(page).to have_content("name can't be blank")
            expect(page).to have_content("email can't be blank")
        end
        scenario "correctly updates information" do
            fill_in "user_name", with: "Bobby"
            fill_in "user_email", with: "bobby@bobby.bobby"
            click_button('edituserbutton')
            expect(page).to have_current_path(users_index_path(User.last))
            visit users_edit_path(User.last)
            expect(page.find_field("user_name").value).to eq("Bobby")
            expect(page.find_field("user_email").value).to eq("bobby@bobby.bobby")
        end
        scenario "destroys user and redirects to registration page" do
            click_button('deleteuserbutton')
            expect(page).to have_current_path(users_new_path)
            expect(build(:user)).to be_valid
        end   
    end
  end
end
