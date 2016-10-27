User
  has_and_belongs_to_many :games
  has_many :characters

  id | name | password_digest

Game
  has_and_belongs_to_many :user_games
  has_many :characters
  # belongs_to :user, :foreign_key => 'gm_id'

  id | name | description | gm_id

Character
  belongs_to :user
  belongs_to :game

  id | name | user_id | game_id








# Attribute
#   belongs_to :character

#   id | name | value | character_id

# AttributeName
#   belongs_to :game

#   id | name | game_id

# Talent
#   belongs_to :game
#   has_and_belongs_to_many :characters

#   id | name | description | game_id


