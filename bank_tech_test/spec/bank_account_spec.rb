require 'bank_account'

describe 'Bank Account' do
  it 'keeps track of transactions' do
    bank_account = BankAccount.new
    expect(bank_account).to be_an_instance_of BankAccount
  end

end