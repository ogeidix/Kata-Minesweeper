require "./lib/living_cell"
require "./lib/dead_cell"

class GameoflifeRules
  
  def generate_square(input, r, c)
    return LivingCell.new(r,c) if input=='#'
    return DeadCell.new(r,c)
  end
  
  def next_iteration(field)
    next_field = []
    field.rows.times { |r|
      row = []
      field.columns.times { |c|
        row << field.getSquare(r+1,c+1).after_one_iteration(field)
      }
      next_field << row
    }
    next_field
  end
  
end