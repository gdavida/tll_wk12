class UsersController < ApplicationController
  skip_before_action :require_login, only: [:index, :new, :create]
  
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @boxes = Box.all
    @box = Box.find_by_id(params[:id])
    @statuses = Status.all
    @status = Status.find_by_id(params[:id])
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "Saved"
    else
      render :new
    end
  end

  private 
	def user_params
		params.require(:user).permit(:first_name, :last_name, :role, :email, :password, :password_confirmation)
   end

end
