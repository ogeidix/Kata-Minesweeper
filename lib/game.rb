class Game
    
    def initialize(input)
      input = input.split("\n")
      first_line = input.shift
      rows, columns = first_line.split(" ")
      @field = Field.new(rows.to_i, columns.to_i, input.join("\n"))
    end
    
    def reveal_fields
      result = "Field #1:\n" + @field.reveal + "\n"
    end
  
end