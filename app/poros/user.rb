class User 
  attr_reader :name, :email, :groups 

  def initialize(data)
    @name = data[:attributes][:name]
    @email = data[:attributes][:email]
    @group = data[:attributes][:groups]
  end
end