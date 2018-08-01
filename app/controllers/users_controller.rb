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

		if params[:user][:role_employee] == '1'
			@user.add_role 'employee'
		end

		if params[:user][:role_administrator] == '1'
			@user.add_role 'administrator'
		end

		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end

	def update
		@user = User.find(params[:id])

		if params[:user][:role_employee] == '1'
			@user.add_role 'employee'
		else
			@user.remove_role 'employee'
		end

		if params[:user][:role_administrator] == '1'
			@user.add_role 'administrator'
		else
			@user.remove_role 'administrator'
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
