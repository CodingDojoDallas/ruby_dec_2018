class MessagesController < ApplicationController
  def index
    @user = User.find(session[:user_id])
  end
  def create
  end

  
end
