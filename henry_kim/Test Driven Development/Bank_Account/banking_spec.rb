require_relative 'Banking'
RSpec.describe BankAccount do
  before(:each) do
    @teller = BankAccount.new
    @teller.deposit_check(1000).deposit_saving(200)
  end

  it "Has a getter method for retrieving the checking account balance" do
    expect(@teller.balance_check).to be < (5000)
  end

  it "Has a getter method that retrieves the total account balance" do
    expect(@teller.account_information).to eq(1200)
  end

  it "Has a function that allows the user to withdraw cash" do
    expect(@teller.withdraw_check(500)).to eq(500)
  end

  it "Raises an error if a user tries to withdraw more money than they have in the account" do
    expect{@teller.withdraw_check(1500)}.to raise_error("test")
  end

  it "Raises an error when the user attempts to retrieve the total number of bank accounts" do
    expect{@teller.account_count}.to raise_error(NoMethodError)
  end

  it "Raises an error when the user attempts to set the interest rate" do
    expect{@teller.interest_rate}.to raise_error(NoMethodError)
  end

end
