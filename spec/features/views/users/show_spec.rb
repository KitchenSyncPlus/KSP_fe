# As a user
# When I visit “/users/:id”
# I can see a list of all my groups

require 'rails_helper'


RSpec.describe 'Users' do
  describe '#show' do
    it 'lists all the users groups' do
      user = User.create!(name: 'foo bar', email: 'foo@email.com')
      first_group = user.groups.create!(name: 'foo group name', about: 'about foo')

      visit user_path(user.id)
      expect(page).to have_content("#{user.name}'s dashboard")
      expect(page).to have_content("#{user.name}'s groups")
      expect(page).to have_content(first_group.name)
    end
  end

end