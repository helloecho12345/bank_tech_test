require 'statement'

describe Statement do
  
  it 'creates an instance of the Statement class' do
    @statement = Statement.new
    expect(@statement).to be_an_instance_of(Statement)
  end
end