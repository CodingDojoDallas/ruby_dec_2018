class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        if @comment.valid?
            @comment.save
            return redirect_to "/events/#{params[:comment][:event_id]}"
        else
            flash[:errors] = @comment.errors.full_messages
            return redirect_to "/events/#{params[:comment][:event_id]}"
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        if @comment.destroy
            return redirect_to "/events"
        else
            flash[:errors] = @comment.errors.full_messages
            return redirect_to "/events"
        end 
    end
    private
        def comment_params
            params[:comment][:user_id] = session[:user_id]
            params.require(:comment).permit(:content, :user_id, :event_id)
        end
end
