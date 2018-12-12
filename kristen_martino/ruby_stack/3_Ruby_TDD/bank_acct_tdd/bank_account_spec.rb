require 'rspec'
require_relative 'bank_account'

describe BankAccount do
  before(:each) do
    @acct1 = BankAccount.new
    @acct2 = BankAccount.new.deposit_checking(100)
  end

  it 'has a getter method for retrieving the checking account balance' do
    expect(@acct1.checking_bal).to eq(0)
    expect(@acct2.checking_bal).to eq(100)
  end

  it 'has a getter method for retrieving the total account balance' do
    expect(@acct1.view_total).to eq(0)
    expect(@acct2.view_total).to eq(100)
  end

  it 'has a function that allows the user to withdraw cash' do
    expect(@acct2.withdraw_checking(10).checking_bal).to eq(90)
    expect(@acct2.withdraw_checking(10).checking_bal).to eq(80)
  end

  it 'raises an error if a user tries to withdraw more money than they have in the account' do
    expect{@acct1.withdraw_checking(5)}.to raise_error(RuntimeError)
    expect{@acct2.withdraw_checking(500)}.to raise_error(RuntimeError)
  end

  it 'raises an error if the user tries to retrieve the total number of bank accounts' do
    expect{@acct1.total_accts}.to raise_error(NoMethodError)
    expect{@acct2.total_accts}.to raise_error(NoMethodError)
  end

  it 'raises an error if the user attempts to set the interest rate' do
    expect{@acct1.interest_rate = 0}.to raise_error(NoMethodError)
    expect{@acct2.interest_rate = 0}.to raise_error(NoMethodError)

  end

end
#
#
# my_acct = BankAccount.new
# your_acct = BankAccount.new
# my_acct.account_information
# my_acct.deposit_checking(500).deposit_checking(-250)
# my_acct.withdraw_checking(-100).withdraw_checking(1000)
# my_acct.withdraw_checking(100)
# my_acct.deposit_saving(1000)
# my_acct.account_information
#
# BankAccount.total_accts