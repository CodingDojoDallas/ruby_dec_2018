require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "With valid attributes" do
    it "should save" do
      expect(build(:user)).to be_valid
    end
  end
  context "With invalid attributes" do
    it "should not save if name field is blank" do
      expect(build(:user, name: "")).to be_invalid
    end
    it 'should be a unique name' do
      User.create(name:'JoseAltuve')
      expect(build(:user, name: 'JoseAltuve')).to be_invalid
    end
    it 'should be longer than 5 characters' do
      expect(build(:user, name: 'Jose')).to be_invalid
    end
  end


end
