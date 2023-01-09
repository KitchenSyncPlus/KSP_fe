class FoodService
  def self.recipes(meal)
    get_url("/api/recipes/v2", {meal: meal, random: true})
  end

  def self.get_url(url, params = nil)
    response = conn.get(url, q: params[:meal], random: params[:random])
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://api.edamam.com") do |faraday|
      faraday.params['app_id'] = ENV['app_id']
      faraday.params['app_key'] = ENV['app_key']
      faraday.params['type'] = 'public'
    end
  end
end
