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
    post :create, id: @user
    expect(response).to redirect_to("/login/")
    end
    it "cannot destroy a like" do
    delete :destroy, id: @user
    expect(response).to redirect_to("/login/")
    end
  end
  context "when signed in as the wrong user" do
    before(:each) do
      @user2 = create(:user, name:"BillyBob", email:"aaa@aaa.aaa")
      session[:user_id] = @user2.id
    end
    it "shouldn't be able to destroy a like" do
      delete :destroy, {:like =>{:user_id => @user.id, :secret_id => @secret.id}}
      expect(Secret.find(@secret.id)).to be_valid
    end
  end
end