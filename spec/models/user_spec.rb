require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do
  end
  
  describe 'validations' do
    it { should validate_presence_of :username }
    it { should validate_presence_of :password_digest }
    it { should validate_uniqueness_of(:username).ignoring_case_sensitivity }
  end
end
