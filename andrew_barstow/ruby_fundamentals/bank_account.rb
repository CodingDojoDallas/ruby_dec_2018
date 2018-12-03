class BankAccount
    attr_reader :account_number, :savings_balance
    @@num_accounts = 0
    def initialize (savings_balance)
        @@num_accounts += 1
        @account_number = generate_account_number
        @savings_balance = savings_balance
        @checking_balance = 0
        @interest_rate = 0.01
    end

    def deposit_checking (val)
        @checking_balance += val
        self
    end

    def withdraw_checking (val)
        @checking_balance -= val
        self
    end

    def deposit_savings (val)
        @savings_balance += val
        self
    end

    def withdraw_savings (val)
        @savings_balance -= val
        self
    end

    def num_accounts
        @@num_accounts
    end

    def account_information
        puts "account number: #{@account_number}"
        puts "savings:        #{@savings_balance}"
        puts "checking:       #{@checking_balance}"
        puts "interest rate:  #{@interest_rate}"
        self
    end

    private
    def generate_account_number
        rand(999999999999999999)
    end

end

my_account = BankAccount.new(100000)
my_account.account_information