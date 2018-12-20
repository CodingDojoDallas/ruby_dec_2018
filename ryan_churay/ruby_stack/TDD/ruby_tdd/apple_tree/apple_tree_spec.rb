require_relative 'apple_tree'
RSpec.describe AppleTree do
  before(:each) do
    @tree1 = AppleTree.new()

  end
  it 'has a getter and setter method for age' do
    @tree1.age = 10
    expect(@tree1.age).to eq(10)
  end

  context 'height getter only' do
    it 'has a no setter method for height' do
      expect{@tree1.height = 20}.to raise_error(NoMethodError)
    end
    it 'has a getter method for height' do
      expect(@tree1.height).to eq(0)
    end
  end

  context 'apple getter only' do
    it 'has a no setter method for apple' do
      expect{@tree1.apple = 10}.to raise_error(NoMethodError)
    end
    it 'has a getter method for height' do
      expect(@tree1.apple).to eq(0)
    end
  end

  context 'below the age of 3' do
    before(:each) do
      @tree2 = AppleTree.new
      @tree3 = AppleTree.new
      @tree2.year_gone_by
      @tree3.year_gone_by
      @tree3.year_gone_by
    end
    it 'should not grow apples' do
      expect(@tree2.apple).to eq(0)
    end
    it 'should increase in age' do
      expect(@tree2.age).to eq(1)
    end
    it 'should increase in height by 10 when age is 0' do
      expect(@tree2.height).to eq(10)
    end
    it 'should increas in height by 10 percent when age is <=3 and >0' do
      expect(@tree3.height).to eq(11)
    end
  end

  context 'age is between 3 and 7' do
    before(:each) do
      @tree2 = AppleTree.new
      @tree2.year_gone_by.year_gone_by.year_gone_by
    end
    it 'should grow apples' do
      expect(@tree2.apple).to eq(2)
    end
    it 'should increase in height by 10 when age is 0' do
      expect(@tree2.height).to eq(12.1)
    end
    it 'should lose its apples when pick_apples is called' do
      @tree2.pick_apples
      expect(@tree2.apple).to eq(0)
    end
  end

  context 'age is greater than 10' do
    before(:each) do
      @tree2 = AppleTree.new
      @tree2.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by
    end
    it 'should not grow apples after age 10' do
      expect(@tree2.apple).to eq(14)
    end
  end
end
