class Kennel < ApplicationRecord
  
  has_many :dens
  has_many :visits, through: :dens
  belongs_to :kennel_owner

end
