class BankAccount
attr_reader :account_number, :checking, :savings, :total_amount, :interest_rate
@@num_of_accounts = 0
def initialize
    @account_number = generate_account_number
    @checking = 0
    @savings = 0
    @total_amount = checking + savings
    @interest_rate = 0.01
    @@num_of_accounts += 1
end

def calling_bank_account
    generate_account_number
end

def get_account_number
    puts @account_number
    self
end

def checking_balance
    puts @checking
    self
end

def deposit_checkings(amount)
    @checking += amount
    self
end

def deposit_savings(amount)
    @savings += amount
    self
end

def withdraw_checkings(amount)
    if @checking - amount < 0
        puts "Insufficient funds."
        return self
    else
        @checking -= amount
        return self
    end
end

def withdraw_savings(amount)
    if @savings - amount < 0
        puts "Insufficient funds."
        return self
    else
        @savings -= amount
        return self
    end
end

def account_information
    puts "Your checking balance is: $#{@checking}\nYour saving balance is: $#{@savings}\nYour total balance is: $#{@total_amount}\nYour interest rate is: #{@interest_rate}\nAccount Number: #{@account_number}"
    self
end

def self.number_of_accounts
    puts @@num_of_accounts
end

private

def generate_account_number
    rand(1_000_000_000..9_999_999_999)
end
end

a = BankAccount.new()
# b = BankAccount.new()
# c = BankAccount.new()
# d = BankAccount.new()
# e = BankAccount.new()
# f = BankAccount.new()

BankAccount.number_of_accounts
a.deposit_checkings(1000000).account_information
a.checking = 999999999999999999999
a.account_information