class Item < ApplicationRecord
  has_many :favorites

  validates :name, presence: true, length: { in: 3..15 }
  validates :photo, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
end
