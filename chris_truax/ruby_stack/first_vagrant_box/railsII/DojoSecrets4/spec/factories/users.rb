FactoryBot.define do
  factory :user do
    name { "Jose Altuve" }
    email { "jose@astros.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end
