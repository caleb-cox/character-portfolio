require 'rails_helper'

RSpec.describe Game, :type => :model do



      it "Can save to the database" do
        game = Game.new(name:"Dago", description: "Bah Bah Black Sheep", gm_id:1)

        expect(game.save).to eq(true)
      end

      

end
