class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end
  def create
    @user = User.find(session[:user_id])
    message = Message.create(message: params[:message], user_id: session[:user_id])
    if message.id.nil?
      flash[:notice] = message.errors.full_messages
      redirect_to action: 'index'
    else
      redirect_to action: "index"
    end
  end
end
