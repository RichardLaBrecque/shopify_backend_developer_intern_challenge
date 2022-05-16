require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "creating an item" do
    it 'exists' do
      item = Item.new(name: "item_1", count: 4, description: "some words here")
      expect(item).to be_a Item
      expect(item.name).to eq("item_1")
      expect(item.count).to eq(4)
      expect(item.description).to eq("some words here")

    end
  end
end
