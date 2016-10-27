User
  has_and_belongs_to_many :games
  has_many :characters

  id | name | password_digest

Game
  has_and_belongs_to_many :users
  has_many :characters

  id | name | description | gm_id

Character
  belongs_to :user
  belongs_to :game
  has_many :attributes
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :talents

  id | name | user_id | game_id

Attribute
  belongs_to :characters

  id | name | value | character_id

Talent
  has_and_belongs_to_many :characters

  id | name | description

Skill
  has_and_belongs_to_many :characters

  id | name | attribute | description

