class UsersController < ApplicationController
  before_action :find_user, only: [:show, :pets, :visits, :new_dog]
  before_action :require_logged_in
  skip_before_action :require_logged_in, only: [:new, :create]
  
 

  private

  def user_params
    params.require(:user).permit(:name, :age, :email_address, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
