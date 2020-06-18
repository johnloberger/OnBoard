class Pet < ApplicationRecord

  belongs_to :customer_user, foreign_key: 'user_id'
  has_many :visits

  validates :name, presence: true

  validates :age, presence: true
  validates :age, numericality: { greater_than: 0 }
  validates :age, numericality: { less_than: 20 }

  validates :animal_type, presence: true

  validates :breed, presence: true

end
