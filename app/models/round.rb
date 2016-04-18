class Round < ActiveRecord::Base
  # Remember to create a migration!
  has_many :guesses
  belongs_to :deck
  belongs_to :user


  def correct_cards
    #ZM: Add a column to your guess that is called correct and is boolean.
    # This logic will become simpler. ie
    #return guesses.select(&:is_correct).collect(&card)


    # goal: find out which cards in game in deck have been answered correctly
    # know which deck we are on
    # need round id

    guesses = self.guesses.select do |guess|
      guess.content == guess.card.answer
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
