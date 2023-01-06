class FoodServices
  def recipe(ingr)
    get_url("/api/recipes/v2", {meal: ingr, random: true})
  end

  def get_url(url, params = nil)
    response = conn.get(url, q: params[:meal], random: params[:random])
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.edamam.com") do |faraday|
      faraday.params['app_id'] = ENV.fetch('app_id')
      faraday.params['app_key'] = ENV.fetch('app_key')
      faraday.params['type'] = 'public'
    end
  end
end
