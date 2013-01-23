# encoding: utf-8
class User < ActiveRecord::Base
	attr_accessible :email, :login, :name, :password

	#presence
	validates	:email, :login, :password, :presence => true
	#length
	validates	:email, :length => { :minimum => 5, :message => "muito curto" }
	#regex
	validates	:email, :inclusion => { :in => %w(@), :message => "inválido" }

end
