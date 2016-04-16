class Round < ActiveRecord::Base
  # Remember to create a migration!
  has_many :guesses
  belongs_to :deck
  belongs_to :user


  def correct_cards
    # goal: find out which cards in game in deck have been answered correctly
    # know which deck we are on
    # need round id

    guesses = self.guesses.collect do |guess|
      guess if guess.content == guess.card.answer
    end
    cards = guesses.map do |guess|
      guess.card
    end
    cards
  end

   def select_card
    (self.deck.cards - self.correct_cards).sample
  end


end
