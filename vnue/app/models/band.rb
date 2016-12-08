class Band < ApplicationRecord
  has_secure_password

  validates :email, presence: true, allow_blank: false, format: {with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}
  validates :password, confirmation: true, presence: true, allow_blank: false, length: {minimum: 8}

end
