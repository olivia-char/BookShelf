class QuestionsController < ApplicationController
  def index
  	@user = User.find(session[:user_id])
  	@question = Question.find(1)
  end

  def question_2
  	@user = User.find(session[:user_id])
  	@question = Question.find(2)
  end 

  def question_3
  	@user = User.find(session[:user_id])
  	@question = Question.find(3)
  end 

  def question_4
  	@user = User.find(session[:user_id])
  	@question = Question.find(4)
  end 

  def question_5
  	@user = User.find(session[:user_id])
  	@question = Question.find(5)
  end 
end
