require_relative 'appletree'
RSpec.describe AppleTree do
    before(:each) do
    @tree =AppleTree.new
    end
it "has an age attribute with getter and setter methods" do
    @tree.age=3
    expect(@tree.age).to eq(3)
end
it "has a height attribute with only a getter method 
and raises a nomethoderror is user tries to set height directly" do
    expect(@tree.height).to eq(10)
    expect{@tree.height=20}.to raise_error(NoMethodError)
end
it "has an apple count attribute with only a getter method
and raises a not methoderror if anyone tries to set count directly" do
    expect(@tree.apples).to eq(0)
    expect{@tree.apples=20}.to raise_error(NoMethodError)
end
context "year_gone_by method" do
    before(:each) do
        @tree.age=3
        @x=[@tree.age,@tree.height,@tree.apples]
        @tree.year_gone_by
    end
    it "adds 1 to year" do
        expect(@tree.age-@x[0]).to eq(1)
    end
    it "adds 10% to height" do
        expect(@tree.height/1.1).to eq(@x[1])
    end
    it "adds 2 to apples" do
        expect(@tree.apples-@x[2]).to eq(2)
    end
end
context "tree less than 3" do
    before(:each) do
        @tree0=AppleTree.new
        @tree1=AppleTree.new.year_gone_by
        @tree2=AppleTree.new.year_gone_by.year_gone_by
        @tree3=AppleTree.new.year_gone_by.year_gone_by.year_gone_by
    end
    it "cannot grow apples for first three years" do
        expect(@tree0.apples).to eq(0)
        expect(@tree1.apples).to eq(0)
        expect(@tree2.apples).to eq(0)
        expect(@tree3.apples).to eq(0)
    end
end

it "has a method pick_apples that takes all apples off the tree" do
    @tree.age=3
    @tree.year_gone_by.year_gone_by.year_gone_by
    expect(@tree.pick_apples.apples).to eq(0)
end

context "tree older than 10" do
    it "cannot grow apples" do
        @tree.age=10
        x=@tree.apples
        @tree.year_gone_by
        expect(@tree.apples-x).to eq(0)
    end
end

end