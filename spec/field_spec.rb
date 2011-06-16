require "./lib/field"

describe "A field instance" do
  describe "of 1x1" do
    it "should take no-mine input and reveal its content" do
      field = Field.new(1,1,".")
      field.reveal.should == "0"
    end
    pending "should take one-mine input and reveal its content"
  end
  
  describe "of 1x4" do  
    pending "should take no-mine input and reveal its content"
    pending "should take one-mine input and reveal its content"
  end
  
  describe "of 4x4" do  
    pending "should take no-mine input and reveal its content"
    pending "should take one-mine input and reveal its content"
  end
end