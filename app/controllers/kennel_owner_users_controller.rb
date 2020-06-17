class KennelOwnerUsersController < ApplicationController

  def new
    @kennel_owner = KennelOwnerUser.new
  end

  def create
    @kennel_owner = KennelOwnerUser.create(user_params)
    
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
    params.require(:kennel_owner_user).permit(:name, :age, :email_address, :password, :password_confirmation)
  end


end