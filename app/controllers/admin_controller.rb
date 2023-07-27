class AdminController < ApplicationController
  before_action :admin_logged_in, only:[:index]
  ADMIN_CREDENTIALS = { username: 'rashu', password: 'rashu123' }

  def index
    render
  end

  def login

  end

  def create
    if params[:username] == ADMIN_CREDENTIALS[:username] && params[:password] == ADMIN_CREDENTIALS[:password]
      session[:admin_logged_in] = true
      redirect_to stores_url, notice: 'Logged in successfully as admin!'
    else
      flash.now[:alert] = 'Invalid username or password'
      render :login
    end
  end

  def destroy
    session[:admin_logged_in] = false
    redirect_to root_path, notice: 'Logged out successfully'
  end

  def admin_logged_in
    if session[:admin_logged_in] == false
      flash[:notice] = "You Need to login as an admin to continue...."
      redirect_to admin_login_path
    end
  end

end
