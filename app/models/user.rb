class User < ApplicationRecord
  has_secure_password
  validates :email, :first_name, :last_name, :password_digest, :role, presence: true
  enum role: [:user, :admin]
end
