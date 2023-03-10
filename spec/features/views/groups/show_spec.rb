require 'rails_helper'

RSpec.describe 'Groups' do
  before(:each) do
    @group1 = create(:group, name: Faker::Color.color_name, about: Faker::Company.bs)
  end
  describe '#show' do
    it 'page has name of group and about on page' do
      chipmunk_smackdown = Group.create!(name: "2022 Chipmunk Smackdown", about: "It's going to be nutz")

      visit group_path(chipmunk_smackdown)

      expect(page).to have_content(chipmunk_smackdown.name)
      expect(page).to have_content(chipmunk_smackdown.about)
    end

    it 'page has group participant names listed' do
      chipmunk_smackdown = Group.create!(name: "2022 Chipmunk Smackdown", about: "It's going to be nutz")
      fish_fighters = Group.create!(name: "2022 Fish Fighters", about: "Step on the Scale")
      alvin = chipmunk_smackdown.users.create!(name: "Alvin", email: "Acorn@tree.com")
      theo = chipmunk_smackdown.users.create!(name: "Theodore", email: "Walnut@tree.com")
      simon = fish_fighters.users.create!(name: "Simon", email: "outcastvermin@trap.com")
      visit group_path(chipmunk_smackdown)

      expect(page).to have_content("Group Participants")
      expect(page).to have_content(alvin.name)
      expect(page).to have_content(theo.name)
      expect(page).to_not have_content(simon.name)
    end

    it 'page has count of total users in the group' do
      chipmunk_smackdown = Group.create!(name: "2022 Chipmunk Smackdown", about: "It's going to be nutz")
      fish_fighters = Group.create!(name: "2022 Fish Fighters", about: "Step on the Scale")
      alvin = chipmunk_smackdown.users.create!(name: "Alvin", email: "Acorn@tree.com")
      theo = chipmunk_smackdown.users.create!(name: "Theodore", email: "Walnut@tree.com")
      simon = fish_fighters.users.create!(name: "Simon", email: "outcastvermin@trap.com")

      visit group_path(chipmunk_smackdown)

      expect(page).to have_content('Group Participants: 2')
    end

    it 'can search for a recipe', :vcr do
      visit "/groups/#{@group1.id}"
      fill_in "Search",	with: "chicken"
      click_on 'search'
      expect(current_path).to eq(group_path(@group1.id))
      expect(page).to have_content('Search results')
    end
    
    it 'searched recipes link to recipes page', :vcr do
      visit "/groups/#{@group1.id}"
      fill_in 'Search', with: 'Vegan Tikka Masala'
      click_on 'search'
      click_on 'Vegan Tikka Masala with Tofu and Cauliflower'
      expect(current_path).to eq('/recipes')
      expect(page).to have_content('Vegan Tikka Masala with Tofu and Cauliflower')
      expect(page).to have_content('1 Tablespoon Garam Masala')
    end

    xit 'searched recipes can be added to group menu', :vcr do
      visit "/groups/#{@group1.id}"
      fill_in 'Search', with: 'Vegan Tikka Masala'
      click_on 'search'
      click_on 'Vegan Tikka Masala with Tofu and Cauliflower'
      within '#group_menu' do
        expect(page).to have_content('Vegan Tikka Masala with Tofu and Cauliflower')
      end
    end

  end
end
