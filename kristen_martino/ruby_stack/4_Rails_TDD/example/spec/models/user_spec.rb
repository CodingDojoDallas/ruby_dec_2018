require 'rails_helper'
RSpec.describe User do
  # This is our control
  context "With valid attributes" do
    it "should save" do
      user = User.new(
          first_name: 'shane',
          last_name:  'chang',
          email:      'schang@codingdojo.com'
      )
      expect(user).to be_valid
    end
  end

  context "With invalid attributes" do
    it "should not save if first_name field is blank" do
      user = User.new(
          first_name: '',
          last_name:  'chang',
          email:      'schang@codingdojo.com'
      )
      expect(user).to be_invalid
    end

    it "should not save if last_name field is blank" do
      user = User.new(
          first_name: 'shane',
          last_name:  '',
          email:      'schang@codingdojo.com'
      )
      expect(user).to be_invalid
    end

    it "should not save if email already exists" do
      user  = User.create(
          first_name: 'shane',
          last_name:  'chang',
          email:      'schang@codingdojo.com'
      )
      user2 = User.new(
          first_name: 's',
          last_name:  'c',
          email:      'schang@codingdojo.com'
      )
      expect(user2).to be_invalid
    end

    it "should not save if invalid email format" do
      user = User.new(
          first_name: 'shane',
          last_name:  'chang',
          email:      'schang@codingdojo'
      )
      expect(user).to be_invalid
    end
  end
end