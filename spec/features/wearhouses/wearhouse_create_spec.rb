require 'rails_helper'

RSpec.describe 'creating a wearhouse' do
  it 'can create a wearhouse' do
    visit '/wearhouses/new'
    fill_in "Name", with: 'Wearhouse_1'
    fill_in "Location", with: 'Somecity'
    click_on "Save"
    expect(page).to have_content('Wearhouse_1')
    expect(page).to have_content('Somecity')
  end
end
