require 'rails_helper'
RSpec.describe "updating an item" do
  it 'has a form to edit' do
    item = Item.create!(name: "test_item_2", description: "test_description")
    visit "/items/#{item.id}/edit"
    fill_in "Name", with: "Item test"
    fill_in "Description", with: "description test"
    click_on "Update Item"
    save_and_open_page
  end
end
