require "./lib/null_square"
require "./lib/mine"
require "./lib/square"
require "./lib/field"
require "./lib/game"

describe "A game instance" do
  
  it "Should take one complex field as input and reveal them" do
    game = Game.new("3 5\n...*.\n.....\n*....\n")
    game.reveal_fields.should == <<-OUTPUT
Field #1:
001*1
11111
*1000
OUTPUT
  end
  
  pending "Should take two field as input and reveal them"
  
  pending "Should stop when input is '0 0'"
  
  pending "Should take fields until '0 0'"
  
end