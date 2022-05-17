require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "creating an item" do
    it 'exists' do
      item = Item.new(name: "item_1", description: "some words here")
      expect(item).to be_a Item
      expect(item.name).to eq("item_1")
      expect(item.description).to eq("some words here")
    end
  end
  # describe 'associations' do
  #  it { should have_many(:wearhouses) }
  # end

  describe 'validations' do
   it {should validate_presence_of(:name)}
   it {should validate_presence_of(:description)}
  end
end
