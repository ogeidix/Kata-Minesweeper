class Field
  
  def initialize(rows,columns,disposition)
    @rows = rows
    @columns = columns
    @disposition = []
    disposition = disposition.split(//)
    @columns.times { @disposition << generate_square(disposition.shift) }
  end
  
  def reveal
    result = ""
    @disposition.each { |square| result += square.reveal }
    result
  end
  
  def generate_square(input)
    return Mine.new if input=='*'
    return Square.new
  end
  
  def getSquare(row,column)
    return @disposition[column-1] if coordinates_valid?(row,column)
    return NullSquare.new
  end
  
  private
  def coordinates_valid?(row,column)
    return false if (row < 1 || column < 1 || row > @rows || column > @columns)
    return true
  end

end