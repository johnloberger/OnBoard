class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update]


  def show
    @owner = @pet.customer_user
  end

  def edit
  end

  def new
    @pet = Pet.new
  end

  def create
    current_user
    @pet = Pet.create(pet_params)
    redirect_to customer_user_pet_path(@pet)
  end 

  def update
    current_user
    @pet.update(pet_params)
    redirect_to customer_user_pet_path(@pet)
  end

  def destroy
    find_pet
    @pet.destroy
    redirect_to customer_user_pets_path
  end

  private

  def find_pet
    @pet = Pet.find(params[:id])
  end 

  def pet_params
    params.require(:pet).permit(:name, :age, :animal_type, :breed, :user_id)
  end
end
