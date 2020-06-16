class Kennel < ApplicationRecord

  has_many :dens
  has_many :visits, through: :dens
  has_many :pets, through: :visits
  belongs_to :kennel_owner_user

end
