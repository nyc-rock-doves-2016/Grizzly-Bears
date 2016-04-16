class Card < ActiveRecord::Base
  # Remember to create a migration!
  validates :question, :answer, presence: true
  belongs_to :deck
  has_many :guesses


  def self.is_correct?(guess, card)
    card.answer == guess.content
  end



end
