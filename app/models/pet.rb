class Pet < ApplicationRecord

  belongs_to :user
  has_many :visits
  has_many :dens, through: :visits
  
end
