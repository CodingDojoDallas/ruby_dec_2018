class BankAccount
    attr_accessor :checking, :savings
    attr_reader :account_number
    @@accounts = 0
    def initialize
        @account_number = acct_num
        @checking = 0
        @savings = 0
        @interest_rate = 0.1
        @@accounts += 1
    end
    def display_acct_num
        puts self.account_number
        self
    end
    def display_checking
        puts self.checking
        self
    end
    def display_savings
        puts self.savings
        self
    end
    def display_total
        puts self.savings+self.checking
        self
    end
    def account_information
        puts "Account ##{self.account_number}"
        puts "Account Total: #{self.savings+self.checking}"
        puts "Checking Total: #{self.checking}"
        puts "Savings Total: #{self.savings}"
        puts "Interest Rate: #{@interest_rate}"
        self
    end
    def deposit acct, val
        self.checking += val if acct == "checking"
        self.savings += val if acct == "savings"
        self
    end
    def withdraw acct, val
        self.checking -= val if acct == "checking"
        self.savings -= val if acct == "savings"
        self
    end
    def self.num_of_accounts
        puts @@accounts
    end
    private
    def acct_num
        @random_num = Random.new
        @random_num.rand(100000000000)
    end
end

account = BankAccount.new
account.display_acct_num.deposit("checking",1000).deposit("savings", 9999).display_total.withdraw("checking", 300).withdraw("savings", 2000).account_information
BankAccount.num_of_accounts
