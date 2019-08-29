FactoryBot.define do
  factory :purchase do
    user { create(:user) }
    content_pack { create(:content_pack) }
  end
end
