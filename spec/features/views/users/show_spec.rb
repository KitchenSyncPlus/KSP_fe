require 'rails_helper'

RSpec.describe 'Users' do
  describe '#show' do
    it 'lists all the users groups', :vcr do
      user = User.create!(name: 'foo bar', email: 'foo@email.com')
      first_group = user.groups.create!(name: 'foo group name', about: 'about foo')
      second_group = user.groups.create!(name: 'foo group 2 name', about: 'about foo group 2')

      visit user_path(user.id)
      expect(page).to have_content("#{user.name}'s dashboard")
      expect(page).to have_content("#{user.name}'s groups")
      expect(page).to have_content(first_group.name)
      expect(page).to have_content(second_group.name)

    end

    it 'has a link to create a new group', :vcr do
      user = User.create!(name: 'foo bar', email: 'foo@email.com')
      first_group = user.groups.create!(name: Faker::Color.color_name, about: Faker::Company.bs)

      visit user_path(user.id)

      expect(page).to have_button("Create New Group")
      click_button("Create New Group")
      expect(current_path).to eq(new_user_group_path(user.id))
    end

    it 'the listed group names are links to their individual show page', :vcr do
      user = User.create!(name: 'foo bar', email: 'foo@email.com')
      first_group = user.groups.create!(name: 'foo group name', about: 'about foo')
      second_group = user.groups.create!(name: 'foo group 2 name', about: 'about foo group 2')

      visit user_path(user.id)

      click_on(first_group.name)

      expect(current_path).to eq("/groups/#{first_group.id}")
      expect(current_path).to_not eq("groups/#{second_group.id}")
    end
  end
end
