require 'rails_helper'

RSpec.describe FoodService do
  before :each do
    @service = FoodService.new
  end

  it 'exists' do
    expect(@service).to be_a(FoodService)
  end

  it 'returns park by given state' do
    food = "sweet potatoes"
    foods = @service.get_foods(food)
    expect(foods[:foods].first).to have_key(:gtinUpc)
    expect(foods[:foods].first).to have_key(:description)
    expect(foods[:foods].first).to have_key(:brandOwner)
    expect(foods[:foods].first).to have_key(:ingredients)
  end
end
