require 'rails_helper'

RSpec.describe Character, type: :model do

  let (:character) {Character.new(name:"bobby", commando: 2, hacker: 2, witch: 6)}

  describe '#attributes_total' do
    it 'creates a total of commando, hacker and witch attribute points' do
      expect(character.attributes_total).to eq(10)
    end
  end

end
