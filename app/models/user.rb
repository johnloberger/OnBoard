class User < ApplicationRecord
  has_secure_password

  # has_many :pets
  # has_many :visits, through: :pets

  validates :name, presence: true
  validates :email_address, presence: true

  validates :age, numericality: { greater_than_or_equal_to: 18 }
end
