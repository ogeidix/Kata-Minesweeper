require "./lib/mine"
require "./lib/square"

class MinesweeperRules
  
  def generate_square(input, r, c)
    return Mine.new(r,c) if input=='*'
    return Square.new(r,c)
  end
  
end