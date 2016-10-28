class CharactersController < ApplicationController
  def new
    @character = Character.new
    @skills = Skill.all
    @talents = Talent.all
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = session[:user_id]
    @character.game = Game.all.first
    @character.skills << Skill.find(params[:character][:skill_1])
    @character.skills << Skill.find(params[:character][:skill_2])
    @character.skills << Skill.find(params[:character][:skill_3])
    @character.talents << Talent.find(params[:character][:talent])

    if @character.save
      redirect_to @character
    else
      @skills = Skill.all
      @talents = Talent.all
      render :new
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def character_params
    params.require(:character).permit(:name, :commando, :witch, :hacker)
  end

end
