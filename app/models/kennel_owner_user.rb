class KennelOwnerUser < User 

  has_many :kennels
  has many :dens, through: :kennels
  has_many :visits, through: :kennels

end