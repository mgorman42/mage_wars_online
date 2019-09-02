require 'rails_helper'

RSpec.describe Priestess, type: :model do
  subject {build("priestess")}
  describe 'initial life' do
    it "should be 32" do
      expect(subject.base_life).to eq(32)
    end
  end

  describe 'initial channeling' do
    it "should be 10" do
      expect(subject.base_channel).to eq(10)
    end
  end

  describe 'initial attack' do
    it "should be 3" do
      expect(subject.base_attack).to eq(3)
    end
  end
end
