class User < ApplicationRecord
  has_and_belongs_to_many :games
  has_many :characters
  has_secure_password
  validates :name, uniqueness: true

end
