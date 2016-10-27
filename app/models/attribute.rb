class Attribute < ApplicationRecord
  belongs_to :game
  has_and_belongs_to_many :characters
end
