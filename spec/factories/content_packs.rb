FactoryBot.define do
  sequence :pack_name do |n|
    "Content Pack #{n}"
  end
end

FactoryBot.define do
  factory :content_pack do
    name { generate(:pack_name) }
    price { rand(100) + rand(100) / 100.0 }
  end
end

