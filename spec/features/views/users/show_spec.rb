require 'rails_helper'

RSpec.describe 'Users' do
  describe '#show' do
    it 'lists all the users groups' do
      user = User.create!(name: 'foo bar', email: 'foo@email.com')
      first_group = user.groups.create!(name: 'foo group name', about: 'about foo')
      second_group = user.groups.create!(name: 'foo group 2 name', about: 'about foo group 2')

      visit user_path(user.id)
      expect(page).to have_content("#{user.name}'s dashboard")
      expect(page).to have_content("#{user.name}'s groups")
      expect(page).to have_content(first_group.name)
      expect(page).to have_content(second_group.name)
    end

    it 'has a link to create a new group' do 
      user = User.create!(name: 'foo bar', email: 'foo@email.com')
      first_group = user.groups.create!(name: 'foo group name', about: 'about foo')
      
      visit user_path(user.id)

      expect(page).to have_button("Create New Group")
      click_button("Create New Group")
      expect(current_path).to eq("/users/#{user.id}/groups/new")
    end
  end
end
