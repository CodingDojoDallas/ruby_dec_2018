class DashboardController < ApplicationController
  def new
  end

  def display
  end

  def edit
    @user = ActiveRecord::Base.connection.execute("SELECT * FROM users WHERE users.id = #{params[:id]}")
    p @user
    p @user[0]["first_name"]
  end

  def update
  end

  def destroy
  end

  def total
    @total = User.all.count
  end
end
