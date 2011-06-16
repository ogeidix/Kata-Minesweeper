require "./lib/square"
require "./lib/dead_cell"

class LivingCell < Square
    
  def reveal(field)
    "#"
  end
   
  def after_one_iteration(field)
    return self if (living_friends(field) == 2 || living_friends(field) == 3)
    return DeadCell.new(@row, @column)
  end

  private
  def living_friends(field)
    result = 0
    friends(field).each { |friend|
      result +=1 if friend.class == LivingCell
    }
    return result
  end

end