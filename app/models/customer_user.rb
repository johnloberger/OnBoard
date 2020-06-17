class CustomerUser < User 

  has_many :pets
  has_many :dens, through: :visits
  has_many :visits, through: :pets


  

end