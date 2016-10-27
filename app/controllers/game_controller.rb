class GameController < ApplicationController
  def index
  end

  def new
    @game = Game.new
  end
  
  def create
    @game = Game.new(game_params)
    @game.gm_id = session[:user_id]

    if @game.save
      redirect_to @game
    else
      render :new
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end

  private

  def game_params
    params.require(:game).permit(:name, :description)
  end

end