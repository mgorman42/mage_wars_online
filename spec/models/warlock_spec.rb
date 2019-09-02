require 'rails_helper'

RSpec.describe Warlock, type: :model do
  subject {build("warlock")}
  describe 'initial life' do
    it "should be 38" do
      expect(subject.base_life).to eq(38)
    end
  end

  describe 'initial channeling' do
    it "should be 9" do
      expect(subject.base_channel).to eq(9)
    end
  end

  describe 'initial attack' do
    it "should be 3" do
      expect(subject.base_attack).to eq(3)
    end
  end
end
