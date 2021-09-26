class User < ApplicationRecord
  #
  ##authenticate
  #
  # has_secure_password

  #
  ## Associations
  #
  has_many :user_results

  #
  ## Validations
  #
  validates :name, :email, :password_digest, presence: true
  validates :email, uniqueness: { case_sensitive: false }, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
end
