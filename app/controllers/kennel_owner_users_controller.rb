class KennelOwnerUsersController < ApplicationController

  def new
    @kennel_owner = KennelOwnerUser.new
  end

  def create
    @kennel_owner = KennelOwnerUser.create(user_params)
    
    if @kennel_owner.valid?
      redirect_to kennel_owner_user_path(@kennel_owner)
    else
      flash[:user_errors] = @kennel_owner.errors.full_messages
      redirect_to new_kennel_owner_user_path(@kennel_owner)
    end
    session[:user_id] = @kennel_owner.id
  end
  

  private

  def user_params
    params.require(:kennel_owner_user).permit(:name, :age, :email_address, :password, :password_confirmation)
  end


end