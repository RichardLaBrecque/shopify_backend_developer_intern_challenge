class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  has_many :wearhouse_items
  has_many :wearhouses, through: :wearhouse_items
end
