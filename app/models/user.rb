class User < ApplicationRecord
  has_and_belongs_to_many :games
  has_many :characters
  has_secure_password
  validates :name, uniqueness: true

  def character_attributes
    {
      commando: self.characters.sum(:commando),
      hacker: self.characters.sum(:hacker),
      witch: self.characters.sum(:witch)
    }
  end

end
