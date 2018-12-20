require 'rails_helper'
feature "secret features" do
    before(:each) do
        @user = create(:user)
        @user2 = create(:user, name:'jeffers', email:'j@jjj.com')
        @user.save
        @user2.save
        @secret = create(:secret, user: @user)
        @secret2 = create(:secret, content:'a secret only jeffers can change',user:@user2)
        @secret.save
        @secret2.save
        @like = create(:like, user: @user, secret: @secret)
        @like.save
        visit login_path
        fill_in "email", with: "bob@bob.bob"
        fill_in "password", with: "password"
        click_button "loginbutton"
    end  
  feature "Users personal secret page" do
    before (:each) do
    visit users_secrets_path(@user)
    end
    scenario "shouldn't see other user's secrets" do
        expect(page).not_to have_content("only jeffers")
    end
    feature "create a new secret" do
        scenario "tries to add a secret without a message" do
            click_button "addsecretbutton"
            expect(page).to have_content("content is too short")
        end
        scenario "successfully creates a secret" do
            fill_in "secret_content", with: "this is another added secret"
            click_button "addsecretbutton"
            expect(page).to have_content("this is another added secret")
            expect(page).to have_current_path(secrets_index_path)
        end
    end
    scenario "destroy secret from profile page, redirects to user profile page" do
        click_button ('deletesecretbutton'+@secret.id.to_s)
        expect(page).to have_current_path(users_index_path(@user))
        visit secrets_index_path
        expect(page).not_to have_content("I kissed a girl")
    end
  end
  feature "Secret Dashboard" do 
    before (:each) do
    visit(secrets_index_path)
    end
    scenario "displays everyone's secrets" do
        expect(page).to have_content("I kissed a girl and I liked it")
        expect(page).to have_content("a secret only jeffers can change")
    end
    scenario "destroy secret from index page, redirects to user profile page" do
        click_button ('deletesecretbutton'+@secret.id.to_s)
        expect(page).to have_current_path users_index_path(@user)
        visit secrets_index_path
        expect(page).not_to have_content("I kissed a girl")
    end
  end
end