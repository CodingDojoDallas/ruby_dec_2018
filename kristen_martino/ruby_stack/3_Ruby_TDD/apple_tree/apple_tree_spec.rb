require 'rspec'
require_relative 'apple_tree'

describe AppleTree do
  before(:each) do
    # Prepare an apple tree for all of the tests
    @tree = AppleTree.new
  end

  context 'when age < 3' do
    it 'should not grow any apples' do
      expect(@tree.apple_count).to equal(0)
      expect(@tree.year_gone_by.apple_count).to equal(0)
      expect(@tree.year_gone_by.apple_count).to equal(0)
      expect(@tree.year_gone_by.apple_count).to equal(0)
    end
  end

  context 'when age >= 3 && age < 10' do
    before(:each) do
      @tree.age = 3
    end
    it 'should grow 2 apples per year' do
      expect(@tree.apple_count).to equal(0)
      expect(@tree.year_gone_by.apple_count).to equal(2)
      expect(@tree.year_gone_by.apple_count).to equal(4)
    end
  end

  context 'when age > 10' do
    before(:each) do
      @tree.age = 10
    end
    it 'should not grow any apples' do
      expect(@tree.apple_count).to equal(0)
      expect(@tree.year_gone_by.apple_count).to equal(0)
      expect(@tree.year_gone_by.apple_count).to equal(0)
    end
  end


end