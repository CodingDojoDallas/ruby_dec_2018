require 'rails_helper'
RSpec.describe SecretsController, type: :controller do
  before do
    @user = create(:user)
    @secret = create(:secret, user: @user)
    @user2 = create(:user,name: "bob", email: "bob@gmail.com")
    @secret2 = create(:secret, user: @user2)
  end
  context "when not logged in" do
    before do
      session[:user_id] = nil
    end
    it "cannot access index" do
        get :index, id: @user
        expect(response).to redirect_to("/users/new")
    end
    it "cannot access create" do
        post :create, id: @user
        expect(response).to redirect_to("/users/new")
    end
    it "cannot access destroy" do
        delete :destroy, id: @user
        expect(response).to redirect_to("/users/new")
    end
  end
  context "when signed in as the wrong user" do
    before do
        session[:user_id] = @user.id
      end
    it "cannot destroy another user's secret" do
        delete :destroy, id: @secret2.id
        expect(assigns[:errors]).not_to be_nil
        expect(response).to redirect_to("/users/#{session[:user_id]}")
    end
  end
end