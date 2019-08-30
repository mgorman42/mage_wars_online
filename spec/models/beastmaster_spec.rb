require 'rails_helper'

RSpec.describe Beastmaster, type: :model do
  subject {build("beastmaster")}
  describe 'initial life' do
    it "should be 36" do
      expect(subject.base_life).to eq(36)
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
