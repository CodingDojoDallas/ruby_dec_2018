require 'rails_helper'

RSpec.describe Post, type: :model do
  it "has to have text longer than 10 characters and have a user" do
    expect(build(:post, content:'')).to be_invalid
    expect(build(:post, content:'123456789')).to be_invalid
    expect(build(:post, user:nil)).to be_invalid
  end
end
