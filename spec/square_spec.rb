require "./lib/square"

describe "A square instance" do

  it "should not explode" do
    square = Square.new
    square.explode?.should_not be_true
  end
  
  pending "should return the number of friends that can explode"
  pending "should ask the field each of its friends"
  
end