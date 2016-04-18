class Card < ActiveRecord::Base
  # Remember to create a migration!
  validates :question, :answer, presence: true
  belongs_to :deck
  has_many :guesses

  #ZM: This should not be a Class Method.
  # Instead it should me an instance method
  # is_correct?(guess)
  # self.answer == guess
  # end
  def self.is_correct?(guess, card)
    card.answer == guess.content
  end



end
