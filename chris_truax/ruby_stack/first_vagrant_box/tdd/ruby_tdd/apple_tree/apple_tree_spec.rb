require_relative 'apple_tree'

RSpec.describe AppleTree do
    before(:each) do
        @appletree1 = AppleTree.new(1)
        @appletree1.age = 4
    end
    it 'has a getter and setter for age attribute' do
        @appletree1.age = 7
        expect(@appletree1.age).to eq(7)
    end
    it 'has a getter for height attribute' do
        expect{@appletree1.height = 20}.to raise_error(NoMethodError)
        expect(@appletree1.height).to eq(8)
    end
    it 'has a getter for apple_count attribute' do
        expect{@appletree1.apple_count = 20}.to raise_error(NoMethodError)
        expect(@appletree1.apple_count).to eq(2)
    end
    it 'has a method pick_apples to reset apple_count' do
        @appletree1.pick_apples
        expect(@appletree1.apple_count).to eq(0)
    end
    context "age is less than 4" do 
        before(:each) do
            @appletree2 = AppleTree.new(1)
        end
        it 'has a method year_gone_by to simulate a years passing which increases height, age, and apple_count depending on its age' do
            @appletree2.year_gone_by
            expect(@appletree2.age).to eq(2)
            expect(@appletree2.height).to eq(4)
            expect(@appletree2.apple_count).to eq(0)
        end
    end
    context "age is between 4 and 9" do 
        before(:each) do
            @appletree3 = AppleTree.new(6)
        end
        it 'has a method year_gone_by to simulate a years passing which increases height, age, and apple_count depending on its age' do
            @appletree3.year_gone_by
            expect(@appletree3.age).to eq(7)
            expect(@appletree3.height).to eq(14)
            expect(@appletree3.apple_count).to eq(8)
        end
    end
    context "age is greater than 9" do 
        before(:each) do
            @appletree4 = AppleTree.new(11)
        end
        it 'has a method year_gone_by to simulate a years passing which increases height, age, and apple_count depending on its age' do
            @appletree4.year_gone_by
            expect(@appletree4.age).to eq(12)
            expect(@appletree4.height).to eq(24)
            expect(@appletree4.apple_count).to eq(0)
        end
    end
end