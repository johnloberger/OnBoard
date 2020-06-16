class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update]

  def show
    @owner = @pet.user
  end

  def edit

  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(pet_params)
    redirect_to pet_path(@pet)
  end 

  def update
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end 

  def pet_params
    params.require(:pet).permit(:name, :age, :animal_type, :breed, :user_id)
  end
end
