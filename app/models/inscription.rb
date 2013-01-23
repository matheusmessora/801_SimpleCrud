class Inscription < ActiveRecord::Base
  belongs_to :user

  attr_accessible :address, :paymentMethod

  
end
