class Item < ApplicationRecord
  has_many :reserveds, foreign_key: 'item_id', dependent: :destroy

  validates :name, presence: true, length: { minimum: 3, maximum: 20 }
  validates :photo, presence: true
  validates :description, presence: true, length: { minimum: 3, maximum: 200 }
  validates :price, presence: true, comparison: { greater_than: 0 }
end
