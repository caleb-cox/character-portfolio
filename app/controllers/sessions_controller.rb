class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new

  end

  def create
    byebug
    user = User.find(session[:user_id])
    redirect_to :show
  end

  def show

  end
end
