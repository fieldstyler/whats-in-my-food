class SearchFacade

  def self.foods(food)
    json = FoodService.get_foods(food)

    @foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end
