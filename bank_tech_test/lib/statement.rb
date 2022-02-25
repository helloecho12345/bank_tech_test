class Statement
  attr_reader :statement
  
  def statement
    @statement = Statement.new
  end

  def print_statement
    return "date || credit || debit || balance"
  end
end