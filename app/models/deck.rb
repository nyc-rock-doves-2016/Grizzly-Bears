class Deck < ActiveRecord::Base
  # Remember to create a migration!
  validates :deck_name, presence: true, uniqueness: true
  has_many :cards
  has_many :rounds

  def select_card
    self.cards.sample
  end
end
