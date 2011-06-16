require "./lib/mine"

describe "A mine instance" do
  
  it "should explode" do
    mine = Mine.new
    mine.explode?.should be_true
  end
  
end