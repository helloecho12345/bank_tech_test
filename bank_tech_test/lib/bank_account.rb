class BankAccount
  attr_reader :account_balance

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
end