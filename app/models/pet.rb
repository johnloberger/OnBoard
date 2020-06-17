class Pet < ApplicationRecord

  belongs_to :customer_user
  has_many :visits
  # has_many :kennels, through: :visits
  # has_many :dens, through: visits

end
