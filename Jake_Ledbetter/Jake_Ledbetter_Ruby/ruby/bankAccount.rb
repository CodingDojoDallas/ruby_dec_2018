class BankAccount
	attr_reader :account_number, :checking, :saving

	@@Number_of_Accounts = 0

	def initialize
		@account_number = create_account
		@checking = 0 
		@saving = 0
		@@Number_of_Accounts += 1
		@interest_rate = 0.01
	end

	def deposit(action, account, amount)
		if action == "checking"
			@checking += amount
		else
			@saving += amount
		end
	end
	def withdraw(action,account,amount)
		if action == "checking"
			if @checking - amount < 0
				puts "Not enough money. You have #{@checking} in this account"
			else
				@checking -= amount
			end
		else
			if @saving - amount < 0
				puts "Not enough money. You have #{@saving} in this account."
			else
				@saving -= amount
			end
		end
	end

	def total
		"Checking account: #{@checking}  Savings account: #{@saving}  Total ballance: #{@checking + @saving}"
	end

	def account_information
		"Account number: #{@account_number}  Interest rate: #{@interest_rate}  #{self.total}"
	end

	def self.NumberOAccounts
		@@Number_of_Accounts
	end
	def AccountNumber
		account_number
	end
	private
		def create_account
			rand(10000)
		end
end

jake = BankAccount.new
jake.deposit("checking", @AccountNumber, 1000)
puts jake.total













