FactoryBot.define do
  factory :secret do
    content { "This is a new secret" }
    user { nil }
  end
end
