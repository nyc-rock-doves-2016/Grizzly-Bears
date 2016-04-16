class Round < ActiveRecord::Base
  # Remember to create a migration!
  has_many :guesses
  belongs_to :deck
  belongs_to :user

end
