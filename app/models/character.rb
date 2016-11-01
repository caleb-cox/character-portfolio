class Character < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :talents

  validates :name, presence: true
  validates :commando, presence: true
  validates :hacker, presence: true
  validates :witch, presence: true

  validates :commando, inclusion: {in: 0..6, message: "is not within 0 to 6"}
  validates :hacker, inclusion: {in: 0..6, message: "is not within 0 to 6"}
  validates :witch, inclusion: {in: 0..6, message: "is not within 0 to 6"}
  validates :attributes_total, numericality: {equal_to: 10}
  validate :skills_must_be_unique

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
    # if self.commando == nil
    #   self.commando = 0
    # end
    zeroer(self.commando) + zeroer(self.hacker) + zeroer(self.witch)
  end

  private

  def skills_must_be_unique
    if self.skills.map(&:id).uniq.size != self.skills.size
      self.errors.add(:skills, "may not repeat")
    end
  end

  def zeroer(attr)
    if attr == nil
      attr = 0
    else
      attr = attr
    end
    attr
  end

  def add_one
    1 + self.commando
  end

end
