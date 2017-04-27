class QuestionsController < ApplicationController
  def index
  	@user = User.find(session[:user_id])
  	@questions = Question.all
  end
end
