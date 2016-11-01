require 'rails_helper'

RSpec.describe Game, :type => :model do



      it "Can save to the database" do
        game = Game.new(name:"Dago", description: "Bah Bah Black Sheep", gm_id:1)

        expect(game.save).to eq(true)
      end


end


RSpec.describe GamesController, :type => :controller do
  describe "GET #show" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end
