class CustomerUsersController < ApplicationController
  before_action :require_logged_in
  # before_action :find_customer, only: [:show, :pets]
  skip_before_action :require_logged_in, only: [:new, :create]

  def new
    @customer = CustomerUser.new
  end

  def create
    @customer = CustomerUser.create(user_params)
    
    if @customer.valid?
      @customer.save
      redirect_to customer_user_path(@customer)
    else
      flash[:user_errors] = @customer.errors.full_messages
      redirect_to new_customer_user_path(@customer)
    end
    session[:user_id] = @customer.id
  end

  def show
    @customer = CustomerUser.find(params[:id])
  end

  def pets
    @customer = @user
    @pets = @customer.pets	   
  end

  def visits 
    @customer = User.find(params[:id])
    @visits = @customer.visits
  end

  private

  def user_params
    params.require(:customer_user).permit(:name, :age, :email_address, :password, :password_confirmation)
  end

  # def find_customer
  #   @customer = CustomerUser.find(params[:id])
  # end


end