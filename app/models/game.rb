class Game < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :characters

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :gm_id, presence: 

  def self.characters_per_game
    self.all.map do |game|
      [game.name, game.characters.count]
    end
  end

  def char_attr_per_game

  end


end
