class UsersController < ApplicationController
  
  def index
    @user = User.find(params[:id])
    @book = Book.new
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def edit
  end
  
  
  private
  
  def user_params_update
    params.require(:user).permit(:name, :image, :introduction)
  end
end

 
