class Talent < ApplicationRecord
  has_and_belongs_to_many :characters

  def to_s
    "#{self.name} | #{self.description}"
  end
end
