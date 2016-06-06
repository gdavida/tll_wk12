class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def new
    @user = User.new
  end

  def create
  	@user = login(params[:email], params[:password])
    puts "about to create and run if"
    if @user
      puts "should redirect"
      redirect_back_or_to(:boxes, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      puts "login failed"
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Logged out!')
  end
end
