class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
         redirect_to "/events/#{comment_params[:event_id]}"
    else
        flash[:errors] = @comment.errors.full_messages
        redirect_to "/events/#{comment_params[:event_id]}"
    end
  end

  private
  def comment_params
      params.require(:comment).permit(:content, :user_id, :event_id)
  end

end
