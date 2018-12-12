require 'rails_helper'
RSpec.describe LikesController, type: :controller do 
  before do 
    @user = create(:user)
    @secret = create(:secret, user: @user)
    @like = create(:like, secret: @secret, user: @user)
    @user2 = create(:user,name: "bob", email: "bob@gmail.com")
    @secret2 = create(:secret, user: @user2)
    @like2 = create(:like, secret: @secret2, user: @user2)
  end
  context "when not logged in " do 
    before do 
      session[:user_id] = nil
    end
    it "cannot create a like" do
        post :create, id: @user
        expect(response).to redirect_to("/users/new")
    end
    it "cannot destroy a like" do
        delete :destroy, id: @user
        expect(response).to redirect_to("/users/new")
    end
  end
  context "when signed in as the wrong user" do
    before do
        session[:user_id] = @user.id
      end
    it "shouldn't be able to destroy a like" do
        delete :destroy, id: @like2.id
        expect(assigns[:errors]).not_to be_nil
        expect(response).to redirect_to("/secrets")
    end
  end
end