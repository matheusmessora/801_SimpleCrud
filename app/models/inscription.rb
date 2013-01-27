class Inscription < ActiveRecord::Base

  belongs_to :user

  attr_accessible :address, :paymentMethod, :status

  validates :address, :status, :paymentMethod, :presence => true
  validates :address, :length => { :minimum => 5 }

  validates :status, :inclusion => { :in => [1, 2, 3] }




  def self.allowedStatus
    [['Ativo', 1], ['Inativo', 2], ['Expirado', 3]]
  end

  
end
