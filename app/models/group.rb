class Group < ApplicationRecord
  validates :name, presence: true
  validates :about, presence: true

  has_many :group_users
  has_many :users, through: :group_users
end
