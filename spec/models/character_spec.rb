require 'rails_helper'

RSpec.describe Character, type: :model do

  let (:character) {Character.new(name:"bobby", commando: 2, hacker: 2, witch: 6)}


  describe '#attributes_total' do
    it 'creates a total of commando, hacker and witch attribute points' do
      expect(character.attributes_total).to eq(character.commando + character.hacker + character.witch)
    end
  end

  describe '#health' do
    it 'equals a commando attribute + 6' do
      expect(character.health).to eq(character.commando + 6)
    end
  end

  describe '#luck' do
    it 'equals a hacker attribute when hacker attribute is > 0' do
      expect(character.luck).to eq(character.hacker)
    end

    it 'equals 1 when hacker attribute is 0' do
      zero_hacker = character
      zero_hacker.hacker = 0
      expect(zero_hacker.luck).to eq(1)
    end
  end

  describe '#mana' do
    it 'equals twice the witch attribute' do
      expect(character.mana).to eq(character.witch * 2)
    end
  end

  describe '#skills_must_be_unique' do
    it 'validates that a character does not have the same skill twice' do
      not_unique = character
      not_unique.skills << Skill.find(1)
      not_unique.skills << Skill.find(1)
      not_unique.save
      expect(not_unique.errors[:skills]).to include("may not repeat")
    end
  end

  describe '#zeroer' do
    it 'Changes attribute value to 0 fixnum if value is nil' do
      zero_hacker = character
      zero_hacker.hacker = nil
      expect(zeroer(zero_hacker.hacker)).to eq(0)
    end
  end

end
