require "./lib/field"
require "./lib/minesweeper_rules"

class Game
    
    def initialize(input, rules = MinesweeperRules.new)
      @fields = []
      @rules = rules
      parse_init_input(input)
    end
    
    def reveal_fields
      result = ""
      @fields.each_with_index { |field, i|
        result += "\n" if result.size > 0
        result += "Field ##{i+1}:\n" + field.reveal + "\n"  
      }
      result
    end
    
    def next_iteration!(n = 1)
      @fields.each { |field|
        field.next_iteration!(n)
      }
    end
    
    def add_field(rows, columns, input, rules)
      @fields << Field.new(rows,columns,input,rules) if rows > 0 && columns > 0
    end
    
    private
    def parse_init_input(input)
      input = input.split("\n")
      first_line = input.shift
      until first_line == "0 0" or input.size == 0
        rows, columns = first_line.split(" ")
        add_field(rows.to_i, columns.to_i, input.shift(rows.to_i).join("\n"), @rules)
        first_line = input.shift
      end
    end
  
end