class UsersController < ApplicationController
  def new
  end

  def create
  	@user = User.new(newUser_params)
  	if @user.save 
      session[:user_id] = @user.id
  		redirect_to "/users/quiz/#{@user.id}"
  	else
  		flash[:errors] = @user.errors.full_messages
  		redirect_to '/'
  	end
  end

  def login	
  	@user = User.find_by_email(params[:email])

  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id
  		redirect_to "/users/#{@user.id}"
  	else
  		flash[:errors] = ["Incorrect Login Information"]
  		redirect_to '/'
  	end
  end

  def index
  end

  private 
  	def newUser_params
  		params.require(:user).permit(:name, :username, :email, :password, :password_confirmation) 
  	end

  	def loginUser_params
  		params.require(:user).permit(:email, :password)
  	end
end
