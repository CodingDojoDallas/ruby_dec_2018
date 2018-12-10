require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'should be a valid product' do
    expect(build(:product)).to be_valid # build(:product) simplified
  end
end
