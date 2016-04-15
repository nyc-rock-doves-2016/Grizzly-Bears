class Guess < ActiveRecord::Base
  validates :content, presence: true
  belongs_to :card
  belongs_to :user
end
