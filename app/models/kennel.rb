class Kennel < ApplicationRecord


  has_many :visits
  belongs_to :kennel_owner

end
