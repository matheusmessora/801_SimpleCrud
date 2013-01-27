class InscriptionsController < ApplicationController

	def create
		@user = User.find(params[:user_id])

		@inscription = Inscription.new params[:inscription]
		
		respond_to do |format|
			if(@inscription.save)
				format.html { redirect_to @user, notice: 'Assinatura adicionada com sucesso.' }
			else
				logger.info(@user.errors.full_messages)
				format.html { render 'users/show' } 
			end
		end
	end	



	def update
		@inscription = Inscription.find(params[:id])
		@inscription.status = Inscription.allowed_status

		logger.debug(@inscription.status)

		respond_to do |format|
			if(@inscription.update_attributes(:address => "TESTE TESTE TESTE"))
				format.html { redirect_to @inscription.user, notice: 'Assinatura removida.' }
			else
				logger.debug(@inscription.errors.full_messages)
				flash[:error] = "ERRO! BANG!"
			end
		end
	end
end
