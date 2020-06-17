class KennelOwnerUser < User 
  has_secure_password

  has_many :kennels, foreign_key: 'user_id'
  has_many :dens, through: :kennels
  has_many :visits, through: :dens
end