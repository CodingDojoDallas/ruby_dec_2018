class PostsController < ApplicationController
  layout "two_column", only: [:index]
  def index
    @posts = Post.all
  end
end
