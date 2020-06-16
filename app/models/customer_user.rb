class CustomerUser < User 

  has_many :pets
  has_many :dens, through: :visits
  has_many :visits, through: :pets


  def visits
    @visits = @user.visits
    render :'visits'
  end

  def show

  end



  def pets
    @pets = @user.pets
    render :'pets'
  end

  

end