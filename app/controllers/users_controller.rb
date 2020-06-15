class UsersController < ApplicationController
  before_action :find_user, only: [:show, :pets]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    if @user.valid?
      redirect_to user_path(@user)
    else
      flash[:user_errors] = @user.errors.full_messages
      redirect_to new_user_path(@user)
    end

  end

  def pets
    @pets = @user.pets
    render :'pets'
  end

  def show
    
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :email_address)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
