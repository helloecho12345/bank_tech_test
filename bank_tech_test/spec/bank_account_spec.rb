require 'bank_account'

describe 'Bank Account' do
  it 'keeps track of transactions' do
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
end