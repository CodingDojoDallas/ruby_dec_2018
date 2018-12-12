require 'rails_helper'
feature 'Like Features' do
    before(:each) do
        @user = create(:user)
        @user2 = create(:user, name:'jeffers', email:'j@jjj.com')
        @user.save
        @user2.save
        @secret = create(:secret, user: @user2)
        @secret2 = create(:secret, content:'a secret only jeffers can change',user:@user2)
        @secret.save
        @secret2.save
        @like = create(:like, user: @user1, secret: @secret)
        @like.save
        visit login_path
        fill_in "email", with: "bob@bob.bob"
        fill_in "password", with: "password"
        click_button "loginbutton"
        visit secrets_index_path
    end
  feature 'secret has not been liked' do
    scenario "like count updated correctly" do
        expect(page).to have_content "Like count: 0"
    end
    scenario "displays like button if you haven't liked secret" do
        expect(page).not_to have_selector("likesecretbutton"+@secret2.id.to_s)
    end
    scenario "liking will update like count, make like button not visible" do
        click_button("likesecretbutton"+@secret2.id.to_s)
        expect(page).not_to have_selector("likesecretbutton"+@secret2.id.to_s)
        expect(page).to have_content "Like count: 1"
    end
  end
  feature "secret has been liked" do
    scenario "unlike button is visible" do
        expect(page).not_to have_selector("unlikesecretbutton"+@secret2.id.to_s)
    end
    scenario "unliking will update like count and make like button display" do
        click_button("likesecretbutton"+@secret.id.to_s)
        expect(page).not_to have_selector("unlikesecretbutton"+@secret2.id.to_s)
        expect(page).to have_content "Like count: 0"
    end
  end
end