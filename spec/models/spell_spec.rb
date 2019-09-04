require 'rails_helper'
Dir["#{Rails.root}/app/models/*.rb"].each {|file| require file }

RSpec.describe Spell, type: :model do
  describe 'associations' do
    it { should belong_to(:content_pack) }
    it { should have_and_belong_to_many(:mages) }
  end

  describe 'validations' do
    it { should_not allow_value("Spell").for(:type)}
    it { should allow_values(*Spell.subclasses.map(&:to_s)).for(:type)}
    it { should validate_presence_of(:name) }
  end

  describe 'attributes' do
    it { should serialize(:cost_data) }
    it { should serialize(:target_data) }
    it { should serialize(:effect_data) }
  end
end
