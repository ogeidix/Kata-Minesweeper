class Field
  
  def initialize(rows,columns,disposition)
    @rows = rows
    @columns = columns
    @disposition = []
    disposition = disposition.split(//)
    @rows.times { |r|
      row = []
      @columns.times { |c| row << generate_square(disposition.shift, r+1,c+1 ) }
      @disposition << row
      disposition.shift
    }
  end
  
  def reveal
    result = ""
    @disposition.each { |row| 
      result +="\n" if result.size > 0
      row.each { |square| result+= square.reveal(self) }
    }
    return result
  end
  
  def generate_square(input, r, c)
    return Mine.new if input=='*'
    return Square.new(r,c)
  end
  
  def getSquare(row,column)
    return @disposition[row-1][column-1] if coordinates_valid?(row,column)
    return NullSquare.new
  end
  
  private
  def coordinates_valid?(row,column)
    return false if (row < 1 || column < 1 || row > @rows || column > @columns)
    return true
  end

end