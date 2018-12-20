require 'rails_helper'
RSpec.describe UsersController, type: :controller do
  before do
    @user = create(:user)
  end
  context "when not logged in" do
    before do
      session[:user_id] = nil
    end
    it "cannot access show" do 
    get :show, id: @user
    expect(response).to redirect_to("/login/")
    end
    it "cannot access edit" do
    get :edit, id: @user
    expect(response).to redirect_to("/login/")
    end
    it "cannot access update" do
    patch :update, id: @user
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
    it "cannot access profile page another user" do
      get :show, id: @user
      redirect_to users_index_path(@user2)
    end
    it "cannot access the edit page of another user"  do
      get :edit, id: @user
      redirect_to users_index_path(@user2)
    end
    it "cannot update another user" do
      patch :update, id: @user
      redirect_to users_index_path(@user2)
    end
    it "cannot destroy another user" do
      delete :destroy, id: @user
      redirect_to users_index_path(@user2)
    end
  end
end