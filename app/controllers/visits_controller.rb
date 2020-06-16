class VisitsController < ApplicationController


  def new
    @visit = Visit.new
    @pets = @user.pets
  end

  def create
    @visit = Visit.create(visit_params)
    redirect_to user_visits_path(@user)
  end

  def show
  end


  private

  def visit_params
    params.require(:visit).permit(:pet_id, :finished, :days, :kennel_id)
  end



end
