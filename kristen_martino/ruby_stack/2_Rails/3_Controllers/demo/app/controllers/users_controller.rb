class UsersController < ApplicationController
  def index
    # renders the index.html.erb view in the views/users folder
    @users = User.all
  end

  def show
    #renders the show.html.erb view in the views/users folder
  end

  def home
    # renders the home.html.erb view in the views/users folder
    render "home"
  end

  def list_products
    # renders the all.html.erb view in the views/products folder
    render "products/all"
  end

  # this method checks if a users is signed in. If so it will redirect to the profile method by using the "<controler>/<method>" convention. If the if statement is not executed, then we will just render the new.html.erb view in the users view foldercopy
  def new
    if signed_in?
      redirect_to "/users/profile"
    end
  end

  def profile
  end

end