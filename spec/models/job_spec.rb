require 'rails_helper'

RSpec.describe Job, type: :model do
  describe 'Associations' do
    it { should have_many(:favorites).dependent(:destroy) }
  end
end
