class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)

		User.available_role_names.each do |role|
			if params[:user]["role_#{role}"] == '1'
				@user.add_role role
			end
		end

		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end

	def update
		@user = User.find(params[:id])

		User.available_role_names.each do |role|
			if params[:user]["role_#{role}"] == '1'
				@user.add_role role
			else
				@user.remove_role role
			end
		end

		if @user.update(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to users_path
	end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :dob, :marital_status,
																	 :sin, :hire_date, :prefs)
		end
end
