class Item < ApplicationRecord
  has_many :favorites

  validates :name, presences: true, length: { in: 3..15 }
  validates :photo, presences: true
  validates :price, presences: true, numericality: { greater_than: 0 }
  validates :description, presences: true
end
