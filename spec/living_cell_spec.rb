require "./lib/living_cell"

def living_cell_with_friends(n)
  cell =  LivingCell.new(1,1)
  cell.stub(:living_friends).and_return(n)
  return cell
end

describe "A cell instance" do

  it "should return itself after one iteration if 2 friends are live" do
    cell = living_cell_with_friends(2)
    cell.after_one_iteration(nil).should == cell
  end

  it "should return itself after one iteration if 3 friends are live" do
    cell = living_cell_with_friends(3)
    cell.after_one_iteration(nil).should == cell
  end

  it "should return a DeadCell after one iteration if 0 friends are live" do
    cell = living_cell_with_friends(0)
    (cell.after_one_iteration(nil).class == DeadCell).should be_true
  end

  it "should return a DeadCell after one iteration if 4 friends are live" do
    cell = living_cell_with_friends(4)
    (cell.after_one_iteration(nil).class == DeadCell).should be_true
  end

end