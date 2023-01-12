class Group 
  attr_reader :name, :about, :users, :id 

  def initialize(data)
    @name = data[:attributes][:name]
    @about = data[:attributes][:about]
    @users = data[:attributes][:users]
    @id = data[:id]
  end


end