class BankAccount
  attr_reader :account_balance, :statement, :transactions

  def initialize(account_balance = 0)
    @account_balance = account_balance
    @transactions = []
  end

  def bank_account
    bank_account = BankAccount.new
  end

  def statement_header
    return "date || credit || debit || balance"
  end

  def deposit(d)
    @account_balance = @account_balance + d
  end

  def withdrawal(w)
    if @account_balance - w <= 0
      raise "Insufficient funds in account to withdraw"
    else
      @account_balance -= w
    end
  end

  def print_statement
    return "date || credit || debit || balance"
  end

  def transaction()
    @transactions.push(Time.now.strftime('%d/%m/%Y'), @credit, @debit, @account_balance)
  end
end