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
  has_and_belongs_to_many :attributes
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :talents

  id | name | user_id | game_id

Attribute
  belongs_to :game
  has_and_belongs_to_many :characters

  id | name | value | game_id

Talent
  belongs_to :game
  has_and_belongs_to_many :characters

  id | name | description | game_id

Skill
  belongs_to :game
  has_and_belongs_to_many :characters

  id | name | attribute | description | game_id

