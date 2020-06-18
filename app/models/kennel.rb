class Kennel < ApplicationRecord

  has_many :dens
  has_many :visits
  has_many :visits, through: :dens
  has_many :pets, through: :visits
  belongs_to :kennel_owner_user, foreign_key: 'user_id'
end
