game.attributes
=> ["commando", "hacker", "witch"]

character belongs_to game
character.attributes
=> {"commando" => 5, "hacker" => 2, "witch" => 3}
=> {game.attributes[0] => 5, game.attributes[1] => 2, game.attributes[2] => 3}

character.attributes[:commando]

User
  has_many :characters
  has_many :games, through: :characters

Character
  belongs_to :user
  belongs_to :game

Game
  has_many :characters
  has_many :users, through: :characters