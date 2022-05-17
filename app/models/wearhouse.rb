class Wearhouse < ApplicationRecord
  has_many :wearhouse_items
  has_many :items, through: :wearhouse_items
end
