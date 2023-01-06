class FoodServices
  def conn
    Faraday.new(url: "https://api.edamam.com") do |faraday|
      # faraday.params['api_key'] = ENV.fetch('tmdb_api_key', nil)
      # faraday.params['language'] = 'en-US'
    end
  end
end
