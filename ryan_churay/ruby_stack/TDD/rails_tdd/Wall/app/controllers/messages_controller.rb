class MessagesController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
      @messages = Message.all
    else
      redirect_to '/users/new' and return
    end
  end
  def create
    @message = Message.new(message_params)
    flash[:notice] = @message.errors.full_messages unless @message.save
    redirect_to '/messages'
  end

  private
    def message_params
      params.require(:message).permit(:content, :user_id)
    end
end
