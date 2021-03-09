class User < ApplicationRecord
    has_many :favorites
    has_many :cryptocurrencies, through: :favorites
end
