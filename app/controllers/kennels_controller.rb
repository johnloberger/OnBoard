class KennelsController < ApplicationController
  
  def new
    @kennel = Kennel.new
  end

  def create
    @kennel = Kennel.create(kennel_params)
    byebug
    redirect_to kennel_owner_user_kennel_path(@kennel)
  end


  def show
    @kennel = Kennel.find(params[:id])
  end

  def edit
    @kennel = Kennel.find(params[:id])
  end

  def update
    @kennel = Kennel.find(params[:id])
    @kennel.update(kennel_params)
    redirect_to kennel_owner_user_kennel_path(@kennel)
  end

  private

  def kennel_params
    params.require(:kennel).permit(:name, :address, :rate, :capacity, :user_id)
  end

  
end
