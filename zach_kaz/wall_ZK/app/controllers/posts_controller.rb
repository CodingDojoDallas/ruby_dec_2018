class PostsController < ApplicationController
    def index
        @posts=Post.all
    end
    def create
        @post = Post.new(params.require(:post).permit(:content))
        @post.user=User.find(id=session[:id])
        if @post.save
            redirect_to '/posts'
        else
          flash[:notice] = @post.errors.messages
          redirect_to '/posts'
        end
    end  

end
