require "./lib/square"

class DeadCell < Square
  def reveal(field)
    "."
  end
   
  def after_one_iteration(field)
    return LivingCell.new(@row,@column) if (living_friends(field) == 3)
    return self
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