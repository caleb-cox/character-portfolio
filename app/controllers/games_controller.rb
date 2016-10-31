class GamesController < ApplicationController

  def index
    @games = Game.all
    @character_count = Game.characters_per_game
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.gm_id = session[:user_id]
    @user = User.find(session[:user_id])

    if @game.save
      @user.games << @game
      redirect_to @game
    else
      render :new
    end
  end

  def show
    @game = Game.find(params[:id])
    session[:game_id] = @game.id
    @user = User.find(session[:user_id])
    @can_edit = @game.gm_id == @user.id

    @user.characters.all.each do |character|
      if character.game_id == session[:game_id]
        @user_character = character
      end
    end

    hacker_sum = @game.characters.average(:hacker)
    commando_sum = @game.characters.average(:commando)
    witch_sum = @game.characters.average(:witch)

    @chart_info = [["commando", commando_sum], ["hacker", hacker_sum], ["witch", witch_sum]]
    # x = Character.find_by_sql "SELECT * from characters where game_id = 1 limit 1"
    # @chart_info = [["hacker", x[0].hacker], ["witch", x[0].witch], ["commando", x[0].commando]]

    # @chart_info = [['banana', 5],['grape', 4]]

  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    if @game.update(game_params)
      redirect_to @game
    else
      render :edit
    end
  end

  def destroy
    @game = Game.find(params[:id])

  end

  private

  def game_params
    params.require(:game).permit(:name, :description)
  end

end
