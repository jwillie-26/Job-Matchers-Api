require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:favorites) }
    it { should have_many(:favorited_jobs).through(:favorites).source(:job) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username).case_insensitive }
    it { should validate_length_of(:username).is_at_least(3) }
    it { should have_secure_password }
  end
end
