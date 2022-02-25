require './lib/bank_account.rb'
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
  
  it 'can track a transaction' do
    bank_account = BankAccount.new
    bank_account.deposit(3000)
    bank_account.withdrawal(500)
    expect(bank_account.transactions).to eq(
      [{:account_balance=>3000, :credit=>3000, :date=>"25/02/2022", :debit=>nil},
       {:date=>"25/02/2022", :credit=>nil, :debit=>500, :account_balance=>2500}])
  end

  # it 'can print a statement with transactions' do
  #   bank_account = BankAccount.new
  #   expect{bank_account.print_statement}.to output{ "date || credit || debit || balance" }.to_stdout
  # end



end