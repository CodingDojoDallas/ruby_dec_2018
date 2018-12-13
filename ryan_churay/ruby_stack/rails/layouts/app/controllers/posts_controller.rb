class PostsController < ApplicationController
  layout "three_column", only: [:index]

  def index
    @posts = Post.all
  end
end
