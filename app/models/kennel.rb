class Kennel < ApplicationRecord

  has_many :dens
  has_many :visits
  has_many :visits, through: :dens
  has_many :pets, through: :visits
  belongs_to :kennel_owner_user, foreign_key: 'user_id'

  validates :name, presence: true
  validates :address, presence: true

  validates :rate, presence: true
  validates :rate, numericality: { greater_than: 0 }

  validates :capacity, presence: true
  validates :capacity, numericality: { greater_than: 0 }
end
