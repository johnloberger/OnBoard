class VisitsController < ApplicationController

  def new
    @visit = Visit.new
    @pets = @user.pets
  end

  def create
    @visit = Visit.create(visit_params)
    @kennel = @visit.kennel

    @den = get_random_den(@kennel)
    
    @den.occupied = true
    @den.pet_id = @visit.pet.id
    @den.save

    @visit.den_id = @den.id
    @visit.save

    redirect_to customer_user_visits_path(@user)
  end

  def get_random_den(kennel)

    capacity = kennel.capacity
    random_den = kennel.dens[rand(1..capacity)]
    if random_den.occupied
      get_random_den(kennel)
    else
      return random_den
    end
  end

  def show

  end

  private

  def visit_params
    params.require(:visit).permit(:pet_id, :finished, :days, :kennel_id, :den_id)
  end



end
