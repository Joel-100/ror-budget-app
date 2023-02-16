require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:author) { create(:user) }
  let(:group) { create(:group, author:) }

  describe 'associations' do
    it { is_expected.to belong_to(:author) }
    it { is_expected.to have_many(:group_entities) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:icon) }
  end
end