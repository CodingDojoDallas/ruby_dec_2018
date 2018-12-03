class UsersController < ApplicationController

# A page that displays all the products.	/products	products#index	GET
  def index
    # When a http GET request to '/users' is received, have your rails app display,
    # in json format, all of the users in your database. Have your users table be
    # composed of simply its id, name, created_at, and updated_at.
    @users = User.all
    render json: @users
  end

# A page that allows the user to add a new product	/products/new	products#new	GET
  def new
    # When a http GET request to '/users/new' is received, have it render:
    # a view file with an empty form to create a new user.
  end

# A URL that processes information submitted from the new page to create a product	/products	products#create	POST
  def create
    # When a http POST request to '/users' is received from the form rendered in
    # '/users/new', have it create a user with the information from the input field.
    # After creating the user, redirect to the '/users' route.
    @user = User.create(params[:user])
    redirect_to action: "index"
  end

# A page that displays information for the product with an id of 2	/products/2	products#show	GET
  def show
    # When a http GET request to '/users/1' is received, have it show,
    # in json format, user 1's information.
    @id = params[:id]
    @user = User.find(@id)
    render json: @user
  end

# A page that allows the user to edit existing product information	/products/2/edit	products#edit	GET
  def edit
    # When a http GET request to '/users/1/edit' is received, have it render:
    # a view file with a form with user 1's information in the appropriate input field.
    @id = params[:id]
    @user = User.find(@id)
  end

# A URL that processes information submitted from the edit page to update a product	/products/2	products#update	PATCH/PUT
  def update
    User.find(id: params[:id]).update(name: params[:name])
    redirect_to action: "index"
  end

  def total
    # When a http GET request to '/users/total' is received, have it render the total number of users.
    @users = User.all
    render plain: @users.length
  end

end