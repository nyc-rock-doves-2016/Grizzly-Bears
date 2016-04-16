class Deck < ActiveRecord::Base
  # Remember to create a migration!
  validates :deck_name, presence: true, uniqueness: true
  has_many :cards
  has_many :rounds


  # def correct_cards(round_id)
  #   # goal: find out which cards in game in deck have been answered correctly
  #   # know which deck we are on
  #   # need round id
  #   self.guesses.collect do |guess|
  #     guess.content == guess.card.answer
  #   end
  # end

  # def select_card
  #   self.cards.sample
  # end

  # def select_card
  #   (self.cards - self.correct_cards).sample
  # end


end
