class ResultsController < ApplicationController
	def create
		@user = User.find(session[:user_id])
		@answer = params[:question]

		if @answer = params[:question][:c1]
			redirect_to "/users/#{@user}"
		end
	end

end
