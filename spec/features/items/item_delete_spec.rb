require 'rails_helper'

RSpec.describe 'delete an item' do
  it 'can be deleted' do
    item_1 = Item.create!(name: "test_item_1", description: "test_description")
    item_2 = Item.create!(name: "test_item_2", description: "test_description")
    item_3 = Item.create!(name: "test_item_3", description: "test_description")
    item_4 = Item.create!(name: "test_item_4", description: "test_description")
    visit '/items'
    expect(page).to have_content("test_item_1")
    click_on 'Delete test_item_1'
    expect(page).to_not have_content("test_item_1")
  end
end
