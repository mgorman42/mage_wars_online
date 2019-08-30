FactoryBot.define do
  sequence :mage_name do |n|
    "mage#{n}"
  end
end

FactoryBot.define do
  factory :mage do
    user { User.first || build(:user)}
    name { generate(:mage_name) }
    description { "some text"}
  end
end
