# needs to be able to save to a test db in order to count and associate
# games and characters :(


# require 'rails_helper'

# RSpec.describe Game, :type => :model do

#   let (:game) {Game.new(name:"Dago", description: "Bah Bah Black Sheep", gm_id:3)}
#   let (:characters) {Character.new(name:"Bob", commando: 2, hacker: 2, witch: 6, user_id: 1, game_id: 1)}

#     describe '#characters_per_game' do
#       it "Can count how many character are in a game" do
#         game = Game.new(id: 1, name:"Dago", description: "Bah Bah Black Sheep", gm_id:3)
#         character = Character.new(name:"Bob", commando: 2, hacker: 2, witch: 6, user_id: 1, game_id: game.id)
#         byebug
#         expect([game.name, game.characters.count]).to eq(["Dago", 1])

#       end
#     end
# end
