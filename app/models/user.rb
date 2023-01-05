class User < ApplicationRecord
  validates_presence_of :username, :password_digest
  validates_uniqueness_of :username, case_sensitive: false
  has_secure_password
end
