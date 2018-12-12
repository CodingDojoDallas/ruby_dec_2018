require 'rails_helper'

RSpec.describe Message, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'with valid attributes' do
    it 'should save with valid message' do
      expect(build(:message)).to be_valid
    end
  end

  context 'with invalid attributes' do
    it 'should not be blank' do
      expect(build(:message, content: '')).to be_invalid
    end
    it 'should be longer than 10 characters' do
      expect(build(:message, content: 'Short')).to be_invalid
    end
    it 'should belong to a user' do
      expect(build(:message, user: nil)).to be_invalid
    end
  end


end
