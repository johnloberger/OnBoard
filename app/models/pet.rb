class Pet < ApplicationRecord

  belongs_to :customer_user, foreign_key: 'user_id'
  has_many :visits
  # has_many :kennels, through: :visits
  # has_many :dens, through: visits

end
