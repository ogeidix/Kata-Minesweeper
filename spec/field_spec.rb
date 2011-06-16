require "./lib/field"

describe "A field instance" do

  describe "of 1x1" do
    it "should take no-mine input and reveal its content" do
      field = Field.new(1,1,".")
      field.reveal.should == "0"
    end
    it "should take one mine input and reveal its content" do
      field = Field.new(1,1,"*")
      field.reveal.should == "*"
    end    
  end
  
  describe "of 1x4" do  
    it "should take no-mine input and reveal its content" do
      field = Field.new(1,4,"....")
      field.reveal.should == "0000"
    end
    it "should take one-mine input and reveal its content" do
      field = Field.new(1,4,".*..")
      field.reveal.should == "1*10"      
    end
  end
  
  describe "of 4x4" do  
    it "should take no-mine input and reveal its content" do
      field = Field.new(4,4,"....\n....\n....\n....\n")
      field.reveal.should == "0000\n0000\n0000\n0000"
    end
    it "should take one-mine input and reveal its content" do
      field = Field.new(4,4,"....\n.*..\n....\n....\n")
      field.reveal.should == "1110\n1*10\n1110\n0000"
    end
  end
  
  it "should return a single square based on provided coordinates" do
    field = Field.new(1,1,'*')
    field.getSquare(1,1).should_not be_nil
  end
  
  it "should return a single square also if coordinates are not valid" do
    field = Field.new(1,1,'*')
    coordinates = [
      [0,0],  [0,1],  [0,2],
      [1,0],  [1,1],  [1,2],
      [2,0],  [2,1],  [2,2]     
    ]
    coordinates.each { |r,c|
      field.getSquare(r,c).should_not be_nil  
    }
  end
end