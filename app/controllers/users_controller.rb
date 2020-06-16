class UsersController < ApplicationController
  before_action :find_user, only: [:show, :pets, :visits, :new_dog]
  before_action :require_logged_in
  skip_before_action :require_logged_in, only: [:new, :create]
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    
    if @user.valid?
      redirect_to user_path(@user)
    else
      flash[:user_errors] = @user.errors.full_messages
      redirect_to new_user_path(@user)
    end
    byebug
    session[:user_id] = @user.id
  end
  

  private

  def user_params
    params.require(:user).permit(:name, :age, :email_address, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
