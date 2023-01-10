class FoodService
  # def self.recipes(meal)
  #   get_url("/api/recipes/v2", {meal: meal, random: true})
  # end

  def self.get_url(url, params = nil) #not updated
    response = conn.get(url, q: params[:meal], random: params[:random])
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "http://localhost:3001")
  end

  def self.recipes(meal)
    response = conn.get('/api/v1/recipes', {meal: meal, random: true})
    # require "pry"; binding.pry
    JSON.parse(response.body, symbolize_names: true)
  end
  #
  # def self.conn
  #   Faraday.new(url: "https://api.edamam.com") do |faraday|
  #     faraday.params['app_id'] = ENV['app_id']
  #     faraday.params['app_key'] = ENV['app_key']
  #     faraday.params['type'] = 'public'
  #   end
  # end
end
