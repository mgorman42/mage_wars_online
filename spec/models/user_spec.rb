require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:purchases) }
    it { should have_many(:content_packs).through(:purchases) }
    it { should have_many(:mages) }
  end

  describe 'validations' do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should have_secure_password  }
    it { should_not allow_value("1234", "abcd").for(:email) }
    it { should allow_value("12@34", "ab@cd").for(:email) }
  end
end
