class JsonController < ApplicationController
  def index
    render json: User.all
  end

  def show
    user = ActiveRecord::Base.connection.execute("SELECT * FROM users WHERE users.id = #{params[:id]}")
    render json: user
  end

  def create
    p request.body.read
    p request.body
    p params
    user = User.create(first_name: params["fname"], last_name: params["lname"], email_address: params["email"]);
    redirect_to '/users/'
  end
end
