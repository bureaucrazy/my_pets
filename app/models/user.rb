class User < ActiveRecord::Base
  has_secure_password

  has_many :pets, dependent: :nullify

  validates :email, presence: true,
            format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :first_name, presence: true
end
