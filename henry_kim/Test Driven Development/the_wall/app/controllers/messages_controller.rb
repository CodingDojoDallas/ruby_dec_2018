class MessagesController < ApplicationController
  def index
    @user = User.find(session[:user])
    @messages = Message.joins(:user).select('*')
  end
  def create
    @message = Message.new(params.require(:message).permit(:content, :user_id))
    if @message.save
      redirect_to "/messages"
    else
      flash[:notice] = @message.errors.full_messages
      redirect_to '/messages'
    end
  end
end
