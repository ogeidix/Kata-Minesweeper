class Field
  
  def initialize(rows,columns,disposition)
    @rows = rows
    @columns = columns
    @disposition = Square.new
  end
  
  def reveal
    @disposition.reveal
  end

end