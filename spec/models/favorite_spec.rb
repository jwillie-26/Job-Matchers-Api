require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:job) }
  end
end
