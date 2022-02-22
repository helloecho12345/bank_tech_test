require 'bank_account'


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
    @account_balance = 1000
    expect{bank_account.withdrawal(500)}.to change { bank_account.account_balance }
  end

  it 'can print a statement with transactions' do
    bank_account = BankAccount.new
    expect{bank_account.print_statement}.to output(bank_account.statement).to_stdout
  end
end