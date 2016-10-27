class Character < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :talents
end
