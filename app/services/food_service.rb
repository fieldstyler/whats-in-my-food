class FoodService

  def get_foods(food)
    response = connection.get('foods/search') do |request|
      request.headers['X-Api-Key'] = ENV['FOOD_API_KEY']
      request.params['query'] = food
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def connection
    Faraday.new('https://api.nal.usda.gov/fdc/v1/')
  end
end
