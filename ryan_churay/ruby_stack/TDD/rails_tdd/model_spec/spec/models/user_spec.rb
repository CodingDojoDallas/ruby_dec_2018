require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "should not save if first_name field is blank" do
     user = User.new(
           first_name: '',
           last_name: 'chang',
           email: 'schang@codingdojo.com'
       )
     expect(user).to be_invalid
   end

  it "should not save if last_name field is blank" do
    user = User.new(
          first_name: 'Jose',
          last_name: '',
          email: 'altuve@astros.com',
    )
    expect(user).to be_invalid
  end

   it "should not save if email already exists" do
      User.create(
           first_name: 'Jose',
           last_name: 'Altuve',
           email: 'altuve@astros.com',
     )
     user2 = User.new(first_name:'Jose', last_name:'Altuve', email:'altuve@astros.com')
     expect(user2).to be_invalid
   end

   it "should not save if invalid email format" do
    user = User.new(first_name:'Jose', last_name:'Altuve', email:'thisemail')
    expect(user).to be_invalid
  end

   context "With valid attributes" do
    it "should save" do
      user = User.new(
        first_name: 'shane',
        last_name: 'chang',
        email: 'schang@codingdojo.com'
      )
      expect(user).to be_valid
    end
  end

  
end
