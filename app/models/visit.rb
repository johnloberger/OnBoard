class Visit < ApplicationRecord

  belongs_to :pet
  belongs_to :kennel
  belongs_to :den

end
