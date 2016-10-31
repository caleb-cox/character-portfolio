class UsersController < ApplicationController
skip_before_action :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save

      redirect_to login_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @games = GamesUsers.find_by_sql(select * where user_id == @user.id)
    @chart_info = @games.map do |game|
      [game.name, game.description]
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(session[:user_id])
    @user.destroy
    redirect_to root_path
  end

  private

    def user_params
      params.require('user').permit(:name, :password)
    end

end
