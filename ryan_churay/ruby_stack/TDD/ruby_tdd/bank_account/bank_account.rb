class BankAccount
  attr_reader  :interest, :acc_num, :checking_bal, :saving_bal

  @@accounts = 0
  @@interest = 0.01
  def initialize
    @@accounts += 1
    @acc_num = acc_gen
    @checking_bal = 0
    @saving_bal = 0
  end
  def self.number_account
    puts @@accounts
  end
  def deposit_check val
    @checking_bal += val
    puts @checking_bal
    self
  end
  def deposit_saving val
    @saving_bal += val
    puts @saving_bal
    self
  end
  def withdraw_check val
    raise "You cannot overdraw your checking account" if(@checking_bal - val < 0)
    @checking_bal -= val
    puts @checking_bal
    self
  end
  def withdraw_saving val
    @saving_bal -= val
    puts @saving_bal
    self
  end
  def account_information
    puts "Account Num: #{@acc_num}, Total: #{@checking_bal+@saving_bal}, Checking Balance: #{@checking_bal}, Savings Balance: #{@saving_bal}, Interest: % #{@@interest}"
  end
  def total
    total = @checking_bal + @saving_bal
    # puts "total balance: #{total}"
    # self
  end
  private
  def acc_gen
    rand(100..1000)
  end
end
# ryan = BankAccount.new
# puts ryan.acc_num
# # ryan.acc_gen
# puts ryan.checking_bal
# puts ryan.saving_bal
# ryan.deposit_check(100).deposit_saving(25)
# ryan.withdraw_check(15).withdraw_saving(7)
# ryan.total
# puts ryan.class
# # ryan.number_account
# BankAccount.number_account
# ryan.account_information
