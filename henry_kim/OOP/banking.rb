class BankAccount
  # your code here
@@account_count = 0

private
  def initialize
    @checking = 0
    @saving = 0
    accountnumber
    @@account_count +=1
    @interest_rate = 0.01
  end

public
  def balance_check
    puts "You have #{@checking} in your checking account"
    self
  end

  def balance_saving
    puts "You have #{@saving} in your saving's account"
    self
  end

  def deposit_check amount
    @checking += amount
    self
  end

  def deposit_saving amount
    @saving += amount
    self
  end

  def withdraw_check amount
    if @checking > amount
      @checking -= amount
    else
      puts "Insufficient funds in your checking account"
    end
    self
  end

  def withdraw_saving amount
    if @saving > amount
      @saving -= amount
    else
      puts "Insufficient funds in your savings account"
    end
    self
  end

  def account_information
    puts "Checking account: #{@checking}, Saving account: #{@saving}, Total monies: #{@checking + @saving}"
    puts "User account: #{accountnumber} Interest rate: #{@interest_rate}"
    self
  end


  private
  def accountnumber
    accountnumber = (0...9).map { [rand(0..   9)] }.join
  end

end

teller = BankAccount.new
teller.deposit_check(1000).deposit_saving(200).account_information
