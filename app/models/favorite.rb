class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :cryptocurrency
  validates_uniqueness_of :user_id, :scope => :cryptocurrency_id
end
