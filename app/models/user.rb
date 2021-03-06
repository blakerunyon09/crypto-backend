class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :cryptocurrencies, through: :favorites
end
