class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :user_id, presences: true
  validates :item_id, presences: true
end
