require_relative 'project'
RSpec.describe AppleTree do
  before(:each) do
    @tree = AppleTree.new(4)
    @tree2 = AppleTree.new(0)
    @tree3 = AppleTree.new(10)
  end

  it 'have an age attribute with getter and setter methods.' do
    expect(@tree.age).to eq("The tree is 4 years old")
  end

  it "Apple Tree should have a height attribute with only a getter method. You should raise a NoMethodError if anyone tries to set the height attribute directly." do
    expect{@tree.height = "15"}.to raise_error(NoMethodError)
  end

  it "Apple Tree should have an apple count attribute with only a getter method. You should raise a NoMethodError if anyone tries to set the apple count attribute directly." do
    expect{@tree.count = "15"}.to raise_error(NoMethodError)
  end

  it "Apple Tree should have a method called year_gone_by." do
    expect(@tree.year_gone_by).to eq("Tree is now 5 years old and has 7 apples, and is 10.5 ft tall")
  end

  it " Apple Tree should not grow apples for the first three years of its life" do
    expect(@tree2.year_gone_by).to eq("Tree is now 1 years old and has 0 apples, and is 10.1 ft tall")
  end

  it "Apple Tree should have a method called pick_apples that takes all of the apples off the tree" do
    expect(@tree.apple_pick).to eq(0)
  end

  it "Apple Tree should not grow apples if it's older than ten." do
    expect(@tree3.year_gone_by).to eq(5)
  end

end
