FactoryBot.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end
end

FactoryBot.define do
  sequence :username do |n|
    "person#{n}"
  end
end


FactoryBot.define do
  factory :user do
    email { generate(:email) }
    username { generate(:username) }
    password { "password" }
    password_confirmation { "password" }
    email_confirmed { true }
  end
end
