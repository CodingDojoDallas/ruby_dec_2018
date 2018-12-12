class UsersController < ApplicationController
  layout "two_column", only: [:index, :new]

  def index
    @users = User.all
  end
  def new

  end
  def users
    render layouts: "two_column"
  end
end
