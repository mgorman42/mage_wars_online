require 'rails_helper'

RSpec.describe ContentPack, type: :model do
  describe 'associations' do
    it { should have_many(:purchases) }
    it { should have_many(:users).through(:purchases) }
    it { should have_many(:spells) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
  end
end
