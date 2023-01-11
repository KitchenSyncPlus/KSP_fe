class DatabaseService
    def self.get_url(url, params = nil)
        response = conn.get(url)
        JSON.parse(response.body, symbolize_names: true)
    end
    
    def self.conn
        Faraday.new(url: "http://localhost:3001")
    end
    
    def self.recipe(meal)
        # get_url("/api/v1/recipe", {meal: meal})

        # temporary, remove when BE endpoints are finished
        response = File.read('spec/fixtures/recipe_fixture.json')
        JSON.parse(response, symbolize_names: true)
    end
    
    def self.groups
        get_url("/api/v1/groups")
        
        # temporary, remove when BE endpoints are finished
        # response = File.read('spec/fixtures/groups_fixture.json')
        # JSON.parse(response, symbolize_names: true)
    end

    def self.group(id)
        get_url("/api/v1/groups/#{id}")
    end
    
    def self.user(id)
        # get_url("/api/v1/user", {user_id: id} )
        response = File.read('spec/fixtures/user_fixture.json')
        JSON.parse(response, symbolize_names: true)
    end

    def self.all_users 
        get_url("/api/v1/users")
    end

    def self.user(id)
        get_url("/api/v1/users/#{id}")
    end
end