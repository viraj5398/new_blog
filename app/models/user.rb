class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :articles, dependent: :destroy
end
