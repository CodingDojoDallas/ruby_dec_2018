class UsersController < ApplicationController
  layout "two_column", only: [:index]
  def index
    @users = User.all
  end
end
