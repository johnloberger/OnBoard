class DensController < ApplicationController

  def show
    @den = Den.find(params[:id])
    @pet = Pet.find_by(id: @den.pet_id)

    @visit = Visit.find do |visit|
      visit.den_id == @den.id && visit.pet_id == @pet.id
    end
    
  end

end
