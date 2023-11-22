class User < ApplicationRecord
  validates :email, format: { with: /\A.*@.*\z/, message: "must contain @ sign"}
end
