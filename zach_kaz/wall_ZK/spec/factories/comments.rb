FactoryBot.define do
  factory :comment do
    message { "this comment on a post that i have deemed to be commentable on" }
    user {  }
    post {  }
  end
end
