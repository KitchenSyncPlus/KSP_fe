class GroupService

  def self.groups
    response = conn.get("/api/v1/groups")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn 
    Faraday.new(url: "http://localhost:3001")
  end
end