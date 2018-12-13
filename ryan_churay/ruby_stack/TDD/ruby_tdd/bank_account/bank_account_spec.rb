require_relative 'bank_account'
RSpec.describe BankAccount do
  before(:each) do
    # updated this block to create two projects
    @account1 = BankAccount.new()
    # @account2 = BankAccount.new()
  end

  it 'has a getter method for retrieving account balance' do
    expect(@account1.checking_bal).to eq(0)
  end

  it 'has a getter method for retrieving total balance' do
    expect(@account1.total).to eq(0)
  end

  it 'can withdraw cash from checking' do
    @account1.deposit_check(15)
    @account1.withdraw_check(10)
    expect(@account1.checking_bal).to eq(5)
  end

  it 'error raised when trying to withdraw more than available amount in checking' do
    expect{@account1.withdraw_check(10)}.to raise_error("You cannot overdraw your checking account")
  end

  it 'error raised when trying to get total number of accounts' do
    expect{@account1.accounts}.to raise_error(NoMethodError)
  end

  it 'error raised when trying to adjust interest rate' do
    expect{@account1.interest = 1}.to raise_error(NoMethodError)
  end

end
