require "./lib/minesweeper_rules"
require "./lib/null_square"

class Field
  
  def initialize(rows,columns,disposition,rules = MinesweeperRules.new)
    @rows = rows
    @columns = columns
    @disposition = []
    @rules = rules
    disposition = disposition.split(//)
    @rows.times { |r|
      row = []
      @columns.times { |c| row << @rules.generate_square(disposition.shift, r+1,c+1 ) }
      @disposition << row
      disposition.shift
    }
  end
  
  attr_reader :rows, :columns
  
  def reveal
    result = ""
    @disposition.each { |row| 
      result +="\n" if result.size > 0
      row.each { |square| result+= square.reveal(self) }
    }
    return result
  end

  def next_iteration!(n = 1)
    n.times { 
      @disposition = @rules.next_iteration(self)
    }
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