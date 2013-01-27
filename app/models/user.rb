# encoding: utf-8
class User < ActiveRecord::Base
	attr_accessible :email, :login, :name, :password

	has_many :inscriptions
	validates_associated :inscriptions


	validates	:email, :login, :password, :presence => true
	validates	:email, :length => { :minimum => 5, :message => "muito curto" }
	#validates	:email, :inclusion => { :in => %w(@), :message => "inválido" }

end
