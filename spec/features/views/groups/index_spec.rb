require 'rails_helper'

RSpec.describe 'Groups' do
  before(:each) do
    create_list(:group, 5)

    visit groups_path
  end

  describe '#index' do
    it 'shows all current groups' do
      groups = Group.all

      groups.each do |group|
        expect(page).to have_link(group.name)
      end
    end
  end
end
