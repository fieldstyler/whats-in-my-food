require 'rails_helper'

RSpec.describe FoodService do
  before :each do
    @service = FoodService.new
  end

  it 'exists' do
    expect(@service).to be_a(FoodService)
  end

  it 'returns foods by given name' do
    food = "sweet potatoes"
    foods = FoodService.get_foods(food)

    expect(foods).to be_a(Hash)
    expect(foods[:foods]).to be_an(Array)

    food_data = foods[:foods].first

    expect(food_data).to have_key(:gtinUpc)
    expect(food_data[:gtinUpc]).to be_a(String)

    expect(food_data).to have_key(:description)
    expect(food_data[:description]).to be_a(String)

    expect(food_data).to have_key(:brandOwner)
    expect(food_data[:brandOwner]).to be_a(String)

    expect(food_data).to have_key(:ingredients)
    expect(food_data[:ingredients]).to be_a(String)
  end
end
