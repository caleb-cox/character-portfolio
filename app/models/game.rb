class Game < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :characters

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
