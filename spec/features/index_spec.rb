require 'rails_helper'

RSpec.describe 'Food Search Index Page' do
  before :each do
    visit root_path
    expect(page).to have_field(:q)
    fill_in :q, with: "sweet potatoes"
    click_on "Search"
  end
  it 'can search sweet potatoes and be brought to foods page' do
    expect(current_path).to eq('/foods')
  end

  xit 'can see total number of items returned by search' do
    expect(page).to have_content("Total Items Returned: ")
  end

  xit 'can see a list of ten foods that contain sweet potatoes' do
    within(".foods") do
      expect(page).to have_css('ul', :count => 10)
    end
  end

  xit 'for each food, can see GTIN/UPC code, description, Brand Owner, and ingredients' do
    within(".foods") do
      expect(page).to have_css('.code')
      expect('.code').to_not be_empty
      expect(page).to have_css('.description')
      expect('.description').to_not be_empty
      expect(page).to have_css('.brand-owner')
      expect('.brand-owner').to_not be_empty
      expect(page).to have_css('.ingredients')
      expect('.ingredients').to_not be_empty
    end
  end
end
