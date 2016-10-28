class Skill < ApplicationRecord
  has_and_belongs_to_many :characters

  def to_s
    "#{self.name} | #{self.character_attribute} | #{self.description}"
  end
end
