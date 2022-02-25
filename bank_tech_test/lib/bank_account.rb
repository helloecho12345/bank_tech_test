require 'date'

class BankAccount
  attr_reader :account_balance, :statement, :transactions

  def initialize(account_balance = 0)
    @account_balance = account_balance
    @transactions = []
    @date = Time.new
  end

  def bank_account
    bank_account = BankAccount.new
  end

  def statement_header
    return "date || credit || debit || balance"
  end

  def deposit(credit)
    @account_balance += credit
    transaction(credit, nil)
  end

  def withdrawal(debit)
    if @account_balance - debit <= 0
      raise "Insufficient funds in account to withdraw"
    else
      @account_balance -= debit
    end
    transaction(nil, debit)
  end

  def transaction(credit, debit)
    @transactions.push({date: @date.strftime("%d/%m/%Y"), credit: credit, debit: debit, account_balance: @account_balance})
  end

  #Time.now.strftime('%d/%m/%Y')
end