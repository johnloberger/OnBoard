class KennelOwner < ApplicationRecord

  has_many :kennels
  has_many :dens, through: :kennels
  
end
