class Group < ApplicationRecord 
  validates_presence_of :name, :about 
  has_many :users
end