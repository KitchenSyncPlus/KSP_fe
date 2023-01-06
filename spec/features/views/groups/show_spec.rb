require 'rails_helper'

RSpec.describe 'Groups' do
   describe '#show' do 
    it 'page has name of group and about on page' do 
      chipmunk_smackdown = Group.create!(name: "2022 Chipmunk Smackdown", about: "It's going to be nutz")

      visit group_path(chipmunk_smackdown)

      expect(page).to have_content(chipmunk_smackdown.name)
      expect(page).to have_content(chipmunk_smackdown.about)
   end
  end 
end