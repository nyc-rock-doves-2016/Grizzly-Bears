class User < ActiveRecord::Base
  # Remember to create a migration!
has_secure_password
validates :username, presence: true, uniqueness: true
has_many :guesses

end
