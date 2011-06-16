require "./lib/game"

describe "A game instance" do
  
  it "Should take one complex field as input and reveal it" do
    game = Game.new("3 5\n...*.\n.....\n*....\n")
    game.reveal_fields.should == <<-OUTPUT
Field #1:
001*1
11111
*1000
OUTPUT
  end
  
  it "Should take two field as input and reveal them" do
    game = Game.new("3 5\n...*.\n.....\n*....\n4 2\n.*\n*.\n..\n..\n")
    game.reveal_fields.should == <<-OUTPUT
Field #1:
001*1
11111
*1000

Field #2:
2*
*2
11
00
OUTPUT
  end
  
  it "Should stop when input is '0 0'" do
    game = Game.new("0 0\n...*.\n.....\n*....\n4 2\n.*\n*.\n..\n..\n")
    game.reveal_fields.should == ""
  end
  
  it "Should take fields until '0 0'" do
    game = Game.new("3 5\n...*.\n.....\n*....\n0 0\n4 2\n.*\n*.\n..\n..\n")
    game.reveal_fields.should == <<-OUTPUT
Field #1:
001*1
11111
*1000
OUTPUT
  end
  
end