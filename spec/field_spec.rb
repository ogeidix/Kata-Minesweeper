require "./lib/mine"
require "./lib/square"
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
    pending "should take one-mine input and reveal its content" do
      field = Field.new(1,4,".*..")
      field.reveal.should == "1*10"      
    end
  end
  
  describe "of 4x4" do  
    pending "should take no-mine input and reveal its content"
    pending "should take one-mine input and reveal its content"
  end
  
  pending "should return a single square based on provided coordinates"
  
end