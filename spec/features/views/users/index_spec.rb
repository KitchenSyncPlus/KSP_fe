require 'rails_helper'

RSpec.describe 'Users' do
  describe '#index' do
    it 'shows all current users as links' do
      10.times do
        create(:user)
      end

      users = User.all

      visit users_path

      users.each do |user|
        expect(page).to have_link(user.name)
      end
    end
  end
end
