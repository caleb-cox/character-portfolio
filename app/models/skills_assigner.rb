class SkillsAssigner
  attr_accessor :character, :skill_1, :skill_2, :skill_3

  def initialize(character, skills)
    @character = character
    @skills = skills
  end


  def assign
    @character.skills.clear

    @skills.each do |skill|
      @character.skills << Skill.find(skill.to_i)
    end
  end

end
