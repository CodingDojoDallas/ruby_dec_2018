FactoryBot.define do
  factory :secret do
    content { "I am a secret, yes I am" }
    user { nil }
  end
end
