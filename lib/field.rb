class Field
  
  def initialize(rows,columns,disposition)
    @rows = rows
    @columns = columns
    @disposition = generate_square(disposition)
  end
  
  def reveal
    @disposition.reveal
  end
  
  def generate_square(input)
    return Mine.new if input=='*'
    return Square.new
  end

end