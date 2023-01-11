class User 
  attr_reader :name, :email, :groups, :id 

  def initialize(data)
    @name = data[:attributes][:name]
    @email = data[:attributes][:email]
    @groups = data[:attributes][:groups]
    @id = data[:id]
  end
end