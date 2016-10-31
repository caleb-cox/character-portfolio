require 'rails_helper'

RSpec.describe User, type: :model do

  let (:user) {User.new(name:"Bubbles", password: "1234")}

  describe '#show' do
    it 'Shows the user name' do
      expect(character.attributes_total).to eq(10)
    end
  end

end
