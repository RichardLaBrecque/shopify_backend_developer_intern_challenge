require 'rails_helper'

RSpec.describe 'wearhouse_items' do
  it 'can assign items to a wearhouse' do
    wearhouse = Wearhouse.create!(location: "somecity", name: "Wearhouse_1")
    item = Item.create(name: "some item", description: 'some words here')
    visit "/wearhouses/#{wearhouse.id}"
    fill_in 'Item name', with: "some item"
    fill_in 'Count', with: 4
    click_on 'Add Item to wearhouse'
    save_and_open_page


  end
end
