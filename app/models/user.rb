class User < ApplicationRecord
  # one-to-many table association
  has_many :articles

  # all Emails saved in lowercase
  before_save {self.email = email.downcase}

  # username validation
  validates :username, presence: true,
            uniqueness: {case_sensitive: false},
            length: {minimum: 6, maximum: 25}

  # email REGEX
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  # email validation
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }

  # Password/Authentication
  has_secure_password
end
