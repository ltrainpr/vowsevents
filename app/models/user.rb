class User < ActiveRecord::Base
  has_secure_password

  validates_uniqueness_of :email
  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i
  validates :email, :format => EMAIL_REGEX
end
