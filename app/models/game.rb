class Game < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :characters

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  def self.characters_per_game
    self.all.map do |game|
      [game.name, game.characters.count]
    end
  end

  def char_attr_per_game
    self.characters.each do |character|
      @c = 0
      @h = 0
      @w = 0
      character.commando += @c
      character.hacker += @h
      character.witch += @w
    end
  end


end
