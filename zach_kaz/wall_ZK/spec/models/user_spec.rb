require 'rails_helper'

RSpec.describe User, type: :model do
  it "username is required and unique and longer than 5 characters" do
    expect(build(:user, username: "")).to be_invalid
    user=User.create(username:'garbo')
    expect(build(:user, username:'garbo')).to be_invalid
    expect(build(:user, username:'john')).to be_invalid
    expect(build(:user)).to be_valid
  end
end
