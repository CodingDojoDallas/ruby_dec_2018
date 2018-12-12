FactoryBot.define do
  factory :user do
    password { "password" }
    password_confirmation {'password'}
      name { "JohnJacobJinglheimmerSchimidt" }
      email { "bob@bob.bob" }
  end
end
