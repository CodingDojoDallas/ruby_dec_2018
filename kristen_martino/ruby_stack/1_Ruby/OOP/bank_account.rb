# noinspection RubyClassVariableUsageInspection
class BankAccount
  @@total_accts = 0
  attr_reader :checking_bal, :saving_bal

  private

  def initialize
    @acct_num      = rand(100_000_000_000..999_999_999_999)
    @checking_bal  = 0
    @saving_bal    = 0
    @interest_rate = 0.01
    @@total_accts  += 1
  end

  def self.total_accts
    p @@total_accts
  end

  public

  def account_information
    puts "Account number: #{@acct_num}"
    puts "Total account balance: #{@checking_bal + @saving_bal}"
    puts "Checking account balance: #{@checking_bal}"
    puts "Savings account balance: #{@saving_bal}"
    puts "Interest rate: #{@interest_rate}"
    self
  end

  def view_acct_num
    puts @acct_num
    self
  end

  def view_total
    puts @checking_bal + @saving_bal
    self
  end

  def view_checking
    puts @checking_bal
    self
  end

  def view_saving
    puts @saving_bal
    self
  end

  def deposit_checking(amt)
    @checking_bal += amt unless amt < 0
    self
  end

  def deposit_saving(amt)
    @saving_bal += amt unless amt < 0
    self
  end

  def withdraw_checking(amt)
    (@checking_bal >= amt) ? @checking_bal -= amt : puts('Insufficient funds') unless amt < 0
    self
  end

  def withdraw_saving(amt)
    (@saving_bal >= amt) ? @saving_bal -= amt : puts('Insufficient funds') unless amt < 0
    self
  end
end

my_acct = BankAccount.new
your_acct = BankAccount.new
my_acct.account_information
my_acct.deposit_checking(500).deposit_checking(-250)
my_acct.withdraw_checking(-100).withdraw_checking(1000)
my_acct.withdraw_checking(100)
my_acct.deposit_saving(1000)
my_acct.account_information

BankAccount.total_accts