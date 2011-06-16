require "./lib/dead_cell"
require "./lib/living_cell"

def dead_cell_with_friends(n)
  cell =  DeadCell.new(1,1)
  cell.stub(:living_friends).and_return(n)  
  return cell
end

describe "A dead cell instance" do

  it "should return itself after one iteration if 0 friends are live" do
    cell = dead_cell_with_friends(0)
    cell.after_one_iteration(nil).should ==  cell
  end

  it "should return itself after one iteration if 1 friends are live" do
    cell = dead_cell_with_friends(1)
    cell.after_one_iteration(nil).should == cell
  end

  it "should return itself after one iteration if 2 friends are live" do
    cell = dead_cell_with_friends(2)
    cell.after_one_iteration(nil).should == cell
  end

  it "should return itself after one iteration if 4 friends are live" do
    cell = dead_cell_with_friends(4)
    cell.after_one_iteration(nil).should == cell
  end

  it "should return a LivingCell after one iteration if 3 friends are live" do
    cell = dead_cell_with_friends(3)
    (cell.after_one_iteration(nil).class == LivingCell).should be_true
  end

end