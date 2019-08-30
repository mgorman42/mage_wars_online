require 'rails_helper'
Dir["#{Rails.root}/app/models/*.rb"].each {|file| require file }

RSpec.describe Mage, type: :model do
  before { @mage = build("mage") }
  describe 'associations' do
    it { should belong_to(:user) }
  end

  describe 'validations' do
    it { should_not allow_value("Mage").for(:type)}
    it { should allow_values(*Mage.subclasses.map(&:to_s)).for(:type)}
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).scoped_to(:user_id) }
    it { should validate_presence_of(:description) }
  end

  subject { build("mage") }
  it "should have base_life attribute" do
    expect(subject.respond_to?("base_life")).to be_truthy
    expect(subject.respond_to?("base_life=")).to be_truthy
  end
  it "should have base_channel attribute" do
    expect(subject.respond_to?("base_channel")).to be_truthy
    expect(subject.respond_to?("base_channel=")).to be_truthy
  end
  it "should have base_attack attribute" do
    expect(subject.respond_to?("base_attack")).to be_truthy
    expect(subject.respond_to?("base_attack=")).to be_truthy
  end
end
