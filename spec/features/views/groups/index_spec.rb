require 'rails_helper'

RSpec.describe 'Groups' do 
  describe '#index' do 

    it 'shows all current groups' do 
      5.times do 
        create(:group)
      end
      groups = Group.all 
      
      visit groups_path 

      groups.each do |group|
        expect(page).to have_link(group.name)
      end
    end
  end
end