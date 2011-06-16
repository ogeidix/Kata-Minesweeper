require "./lib/gameoflife_rules"

describe "An instance of GameoflifeRules" do
  before(:each){
    @rules = GameoflifeRules.new
  }

  it "should generate DeadCell for the simbol ." do
    @rules.generate_square('.',1,1).class.should == DeadCell
  end

  it "should generate DeadCell for the simbol #" do
    @rules.generate_square('#',1,1).class.should == LivingCell
  end  

end