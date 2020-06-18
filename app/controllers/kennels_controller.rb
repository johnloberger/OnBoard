class KennelsController < ApplicationController
  
  def new
    @kennel = Kennel.new
  end
  
  def create
    @kennel = Kennel.new(kennel_params)

    if @kennel.valid?
      @kennel.save
      create_dens
      redirect_to kennel_owner_user_kennel_path(@kennel)
    else
      flash[:kennel_errors] = @kennel.errors.full_messages
      redirect_to kennel_owner_user_new_kennel_path(@user)
    end

  end
  
  def create_dens
    @kennel = Kennel.all.last
    count = 1
    @kennel.capacity.times do 
      Den.create(den_number: count, kennel_id: @kennel.id)
      count += 1
    end
  end

  def dens 
    @kennel = Kennel.find(params[:id])
    @dens = @kennel.dens
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

  def destroy
    @kennel = Kennel.find(params[:id])
    visits = @kennel.visits
    byebug
    visits.each {|v| v.destroy}
    dens = @kennel.dens
    dens.each {|d| d.destroy}
    @kennel.destroy
    byebug
    redirect_to kennel_owner_user_kennels_path
  end

  private

  def kennel_params
    params.require(:kennel).permit(:name, :address, :rate, :capacity, :user_id)
  end

  
end
