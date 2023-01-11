class Group 
  attr_reader :name, :about 
  def initialize(data)
  @name = data[:name]
  @about = data[:about]
end