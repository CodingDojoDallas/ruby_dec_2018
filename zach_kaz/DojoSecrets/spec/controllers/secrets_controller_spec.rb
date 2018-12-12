require 'rails_helper'
RSpec.describe SecretsController, type: :controller do
  before(:each) do
    @user = create(:user)
    @secret = create(:secret, user: @user)
  end
  context "when not logged in" do
    before(:each) do
      session[:user_id] = nil
    end
    it "cannot access index" do
      get :index, id: @user
      expect(response).to redirect_to("/login/")
      end
    it "cannot access create" do
      post :create, id: @user
      expect(response).to redirect_to("/login/")
      end
    it "cannot access destroy" do
      delete :destroy, id: @user
      expect(response).to redirect_to("/login/")
      end
  end
  context "when signed in as the wrong user" do
    before(:each) do
      @user2 = create(:user, name:"BillyBob", email:"aaa@aaa.aaa")
      session[:user_id] = @user2.id
    end
    it "cannot destroy another user's secret" do
      delete :destroy, {:secret =>{:id => @secret.id}}
      expect(response).to redirect_to users_index_path(@user2)
    end
  end
end