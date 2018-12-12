FactoryBot.define do
  factory :user do
    name { "Han Solo" }
    email { "han@solo.com" }
    password { "scruffylookingnerfherder" }
    password_confirmation { "scruffylookingnerfherder" }
  end
end
