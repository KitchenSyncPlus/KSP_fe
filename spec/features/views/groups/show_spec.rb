require 'rails_helper'

RSpec.describe 'Groups' do
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
  end 
end