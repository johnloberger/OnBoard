class Pet < ApplicationRecord

  belongs_to :user
  has_many :visits
  has_many :kennels, through: :visits

end
