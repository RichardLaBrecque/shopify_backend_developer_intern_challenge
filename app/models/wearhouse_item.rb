class WearhouseItem < ApplicationRecord
  belongs_to :item
  belongs_to :wearhouse
end
