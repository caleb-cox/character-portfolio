class Game < ApplicationRecord
  has_and_belongs_to_many :user_games
  has_many :characters
end
