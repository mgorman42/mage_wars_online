require 'rails_helper'

RSpec.describe Purchase, type: :model do
    it { should belong_to(:content_pack) }
    it { should belong_to(:user) }
end
