class CustomerUser < User 
  has_secure_password

  has_many :pets, foreign_key: 'user_id'
  has_many :dens, through: :pets
  has_many :visits, through: :pets
end