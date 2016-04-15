class Deck < ActiveRecord::Base
  # Remember to create a migration!
  validates :deck_name, presence: true, uniqueness: true
  has_many :cards
end
