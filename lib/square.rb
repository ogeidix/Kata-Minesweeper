class Square
  
  def initialize(r,c)
    @row = r
    @column = c
  end
  
  def explode?
    false
  end
  
  def reveal(field)
    result = 0
    friends(field).each { |friend|
      result +=1 if friend.explode?
    }
    result.to_s
  end
   
  def friends(field)
    coordinates = [
      [-1,-1],  [-1,0],  [-1,1],
      [0,-1],            [0,1],
      [1,-1],   [1,0],   [1,1]     
    ]
    friends = []
    coordinates.each { |r,c|
      friends << field.getSquare(@row+r,@column-c)
    }
    friends
  end 
   
end