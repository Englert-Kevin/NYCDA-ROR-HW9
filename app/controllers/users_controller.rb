class UsersController < ApplicationController

	def title
		
	end

	def index
		@users = User.all
	end

	def show
		@user = User.find(user_params)
	end

	def new
		@user = User.new
		
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user, notice: 'Yay!'
		else
			render :new
		end
	end

	def edit
		@user = User.find(user_params)
		
	end

	def update
		@user = User.find(user_params)
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end