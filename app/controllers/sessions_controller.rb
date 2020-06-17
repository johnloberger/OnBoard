class SessionsController < ApplicationController 

  def new
    
  end
  
  def signup
  end
  
  def create
    user = User.find_by(email_address: params[:user][:email_address])
    user = user.try(:authenticate, params[:user][:password])
    emails = User.all.map &:email_address
    if user
      session[:user_id] = user.id
      @user = user
      if user.type == 'CustomerUser'
        redirect_to customer_user_path(@user)
      elsif user.type == 'KennelOwnerUser'
        redirect_to kennel_owner_user_path(@user)
      end
    elsif emails.include?(params[:user][:email_address])
      flash[:user_errors] = ['Please enter a valid password.']
      return redirect_to(controller: 'sessions', action: 'new')
    else 
      flash[:user_errors] = ['Please enter a valid email address.']
      return redirect_to(controller: 'sessions', action: 'new')
    end

    
  end

  def destroy
    session.delete :user_id

    redirect_to '/login'
  end
  
end  