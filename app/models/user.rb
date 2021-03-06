class User < ApplicationRecord
	# Downcase the email before saving
	before_save { email.downcase! }

	# Validate that the name is not bigger than 50 and is there
	validates :name, presence: true, length: { maximum: 50 }

	# Check if the email is valid, less than 255chars and is unique
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
	format: {with: VALID_EMAIL_REGEX},  uniqueness: { case_sensitive: false }

	# This method add fonctionality for secure password
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }


  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
