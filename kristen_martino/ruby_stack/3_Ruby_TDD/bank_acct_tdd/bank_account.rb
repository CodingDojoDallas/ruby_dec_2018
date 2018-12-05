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
    @acct_num
  end

  def view_total
    puts @checking_bal + @saving_bal
    @checking_bal + @saving_bal
  end

  def view_checking
    puts @checking_bal
    @checking_bal
  end

  def view_saving
    puts @saving_bal
    @saving_bal
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
    if @checking_bal >= amt
      @checking_bal -= amt
    else
      puts('Insufficient funds')
      raise('Error: insufficient funds')
    end unless amt < 0
    self
  end

  def withdraw_saving(amt)
    if @saving_bal >= amt
      @saving_bal -= amt
    else
      puts('Insufficient funds')
      raise('Error: insufficient funds')
    end unless amt < 0
    self
  end
end
