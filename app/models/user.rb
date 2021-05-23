class User < ApplicationRecord
  validates :email,
            format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "invalid"},
            length: { minimum: 4, maximum: 254 }
end
