require 'bank_account'
#require 'statement'

describe 'Bank Account' do
  it 'is a bank account' do
    bank_account = BankAccount.new
    expect(bank_account).to be_an_instance_of BankAccount
  end

  it 'can print a statement header' do
    bank_account = BankAccount.new
    expect(bank_account.statement_header).to eq "date || credit || debit || balance"
  end

  it 'can receive a deposit' do
    bank_account = BankAccount.new
    @account_balance = 0
    expect{bank_account.deposit(1000)}.to change { bank_account.account_balance }
  end

  it 'can make a withdrawal' do
    bank_account = BankAccount.new
    bank_account.deposit(1000)
    expect{bank_account.withdrawal(500)}.to change { bank_account.account_balance }
  end

  it 'raises an error if a withdrawal causes a negative balance' do
    bank_account = BankAccount.new
    expect{ bank_account.withdrawal(100) }.to raise_error 'Insufficient funds in account to withdraw'
  end
  # it 'can print a statement with transactions' do
  #   bank_account = BankAccount.new
  #   expect{bank_account.print_statement}.to output{ "date || credit || debit || balance" }.to_stdout
  # end

  # it 'can track a transaction' do
  #   bank_account = BankAccount.new
  #   @transactions = []
  #   expect(@transactions(date: 10/01/2023, credit: 1000, debit: "" , account_balance: 1000)).to eq("10/01/2023 || 1000.00 || || 1000.00")
  # end

end