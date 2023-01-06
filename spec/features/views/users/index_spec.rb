require 'rails_helper'

RSpec.describe 'Users' do
  describe '#index' do
    it 'shows all current users' do
      visit users_path

    end
  end
end