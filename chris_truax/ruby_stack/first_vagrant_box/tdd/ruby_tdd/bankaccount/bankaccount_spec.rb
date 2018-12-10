require_relative 'bank_account'
RSpec.describe BankAccount do
    before(:each) do 
        @account1 = BankAccount.new
        @account2 = BankAccount.new
        @account1.deposit "checking", 100
        @account1.deposit "savings", 100
    end
    it 'has a getter for checking attribute' do
        expect(@account1.checking).to eq(100) 
    end
    it 'has a method display_total to display the total of all users accounts' do
        expect(@account1.display_total).to eq(200)
        expect(@account2.display_total).to eq(0)
    end
    it 'has a method withdraw to withdraw a amount of money from an account' do
        expect(@account1.withdraw("checking", 20)).to eq(80)
    end
    it "can't have negative balance in any account" do
        expect{@account2.withdraw("savings", 20)}.to raise_error("You don't have enough money in your savings account to withdraw 20!")
    end
    it "can't access the total number of accounts because that is a class variable" do
        expect{@account2.accounts}.to raise_error(NoMethodError)
    end 
    it "can't change the interest_rate of accounts because it does not have getter and setter" do
        expect{@account2.interest_rate = 0.5}.to raise_error(NoMethodError)
    end 
end