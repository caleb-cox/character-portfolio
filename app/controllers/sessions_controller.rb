class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new

  end

  def create
    @user = User.find_by(name: params[:user][:name])

    if session[:user_id]
      @name = User.find(session[:user_id])
      flash[:notice] = "You are already logged in as #{@name.name}"
      render :new
    elsif @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:notice] = nil
      flash[:alert] = nil
      redirect_to user_path(@user)
    else
      flash[:alert] = "There was an error logging you in. Please make sure your username and password are correct or "
      render :new
    end
  end

  private

  def sessions_params
    params.require(:user).permit(:name, :password)
  end
end
