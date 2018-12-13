require 'rails_helper'
RSpec.describe LikesController, type: :controller do
  before do
    @user = create(:user)
    @secret = create(:secret, user: @user)
    @like = create(:like, secret: @secret, user: @user)
  end
  context "when not logged in " do
    before do
      session[:user_id] = nil
    end
    it "cannot create a like" do
      post :create
      expect(response).to redirect_to("/sessions/new")
    end
    it "cannot destroy a like" do
      delete :destroy, like: @like
      expect(response).to redirect_to("/sessions/new")
    end
  end
  context "when signed in as the wrong user" do
    before do
      session[:user_id] = @user
      @user2 = create(:user, email: 'bob@bob.com')
      @like2 = create(:like, secret: @secret, user: @user2)
    end
    it "shouldn't be able to destroy a like" do
      delete :destroy, id: @like2.id
      expect(assigns[:errors]).not_to be_nil
      expect(response).to redirect_to("/secrets")
    end
  end
end
