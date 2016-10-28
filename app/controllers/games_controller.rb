class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.gm_id = session[:user_id]
    @user = User.find(session[:user_id])

    @user.games << @game

    if @game.save
      redirect_to @game
    else
      flash.alert = "You dun fucked up, try again"
      render :new
    end
  end

  def show
    @game = Game.find(params[:id])
    session[:game_id] = @game.id
    @user = User.find(session[:user_id])
    @can_edit = @game.gm_id == @user.id
    byebug
    # @in_game = if user already has a character in the game
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    if @game.update(game_params)
      redirect_to @game
    else
      flash.alert = "You dun fucked up, try again"
      render :new
    end
  end

  def destroy
  end

  private

  def game_params
    params.require(:game).permit(:name, :description)
  end

end
