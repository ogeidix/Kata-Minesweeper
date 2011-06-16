require "./lib/null_square"
require "./lib/mine"
require "./lib/square"
require "./lib/field"
require "./lib/game"

describe "Acceptance test" do
  
  it "Should take two complex field as input and reveal them" do
    game = Game.new <<-INPUT
4 4
*...
....
.*..
....
3 5
**...
.....
.*...
0 0    
INPUT

    game.reveal_fields.should == <<-OUTPUT
Field #1:
*100
2210
1*10
1110

Field #2:
**100
33200
1*100
OUTPUT
  end
  
end