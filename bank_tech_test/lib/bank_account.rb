class BankAccount
  attr_reader :account_balance, :statement

  def initialize
    @account_balance = 0

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
    @account_balance = @account_balance - w
  end

  def print_statement
    return @statement
  end

  def statement
    ""
  end
end