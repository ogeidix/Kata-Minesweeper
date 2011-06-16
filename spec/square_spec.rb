require "./lib/square"

describe "A square instance" do

  it "should not explode" do
    square = Square.new(1,1)
    square.explode?.should_not be_true
  end
  
  it "should return the number of friends that can explode" do
    field = Field.new(1,5,'.*...\n.....\n.....\n.....\n.....\n')
    square = field.getSquare(1,1)
    square.reveal(field).should == "1"
  end

  it "should ask the field each of its friends" do
    field = Field.new(5,5,'.....\n.....\n.....\n.....\n.....\n')
    square = field.getSquare(3,3)
    square.friends(field).count.should == 8
  end
  
end