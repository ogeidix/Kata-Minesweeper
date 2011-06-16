require "./lib/minesweeper_rules"

describe "An instance of MinesweeperRules" do
  before(:each){
    @rules = MinesweeperRules.new
  }

  it "should generate square for the simbol ." do
    @rules.generate_square('*',1,1).class.should == Mine
  end

  it "should generate mine for the simbol *" do
    @rules.generate_square('.',1,1).class.should == Square
  end

end 