class Character < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :talents

  validates :name, presence: true
  validates :commando, inclusion: {in: 0..6}
  validates :hacker, inclusion: {in: 0..6}
  validates :witch, inclusion: {in: 0..6}
  validates :attributes_total, numericality: {equal_to: 10}

  def health
    6 + self.commando
  end

  def luck
    self.hacker > 0 ? self.hacker : 1
  end

  def mana
    2 * self.witch
  end

  def attributes_total
    self.commando + self.hacker + self.witch
  end
end
