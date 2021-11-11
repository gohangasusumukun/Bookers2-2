class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :current_user, only: [:edit, :update]
  
  def new
    
  end

  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
    
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end


  def destroy
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end


end
