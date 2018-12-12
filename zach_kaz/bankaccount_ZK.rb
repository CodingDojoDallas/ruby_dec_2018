#I'm not feeling super confident in the private/protected/public stuff on this...
class BankAccount
    @@totalaccts=0
    private
    def create_acct
        @acct_number=Random.new.rand(100..999)
    end
    public
    def initialize
        create_acct
        @checking=0
        @savings=0
        @@totalaccts+=1
    end
    def checking_balance
        puts @checking
        @checking
    end
    def savings_balance
        puts @savings
        @savings
    end
    def add_money(val,account)
        if account=='checking' 
          @checking+=val 
        end
        if account=='savings'
          @savings+=val
        end
        self
    end
    def withdraw(val,account)
        if account=='checking'
            if @checking-=val>=0
                @checking-=val
                return self
            end
            puts "You don't have enough money!"
            return self
        end
        if account=='savings'
            if @savings-=val>=0
                @savings-=val
                return self
            end
            puts "Your savings has run dry!"
        end
    end
    def balance
        puts @savings+@checking
        @savings+@checking
    end
    def total_accts
        puts totalaccts
        totalaccts
    end
    @@interest_rate=0.05
    private
    def set_interest_rate=(val)
        @@interest_rate=val
    end
    public
    def account_information
        puts "Acct Number: #{@acct_number}"
        puts "Total Balance: $#{self.balance}"
        puts "Checking: $#{@checking}"
        puts "Savings: $#{@savings}"
        puts "Interest Rate: #{@@interest_rate}"
        self
    end
end

newaccount=BankAccount.new
newaccount.account_information


