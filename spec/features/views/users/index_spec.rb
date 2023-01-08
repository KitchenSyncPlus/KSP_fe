require 'rails_helper'

RSpec.describe 'Users' do
  before(:each) do
    10.times do
      create(:user)
    end

    @users = User.all

    visit users_path
  end

  describe '#index' do
    it 'shows all current users as links' do
      @users.each do |user|
        expect(page).to have_link(user.name)
      end
    end

    context "add a user" do
      it 'has the ability to add a user' do
        expect(page).to have_link('add user')
        click_on 'add user'
        expect(current_path).to eq(new_user_path)
      end
    end
  end
end
