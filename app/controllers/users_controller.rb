class UsersController < ApplicationController
  
  def show
    @user = User.new
    @books = @user.books
  end

  def edit
  end
end
