class Den < ApplicationRecord

  has_many :visits
  has_many :pets, through: :visits
  belongs_to :kennel

end
