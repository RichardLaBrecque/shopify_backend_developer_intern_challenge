require 'rails_helper'

RSpec.describe "creating an item" do
  it 'has a form to create an item' do
    visit '/items/new'
    fill_in "Name", with: "Item test"
    fill_in "Count", with: 4
    fill_in "Description", with: "description test"
    click_on "Save"
    item = Item.last
  end
end
