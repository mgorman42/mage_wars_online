require 'rails_helper'

RSpec.describe Mage, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
  end

  describe 'validations' do
    it { should_not allow_value("Mage").for(:type)}
    it { should allow_values(*Mage.subclasses).for(:type)}
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).scoped_to(:user_id) }
    it { should validate_presence_of(:description) }
  end
end
