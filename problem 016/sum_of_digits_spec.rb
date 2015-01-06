require "./sum_of_digits"

describe "sum_of_digits" do
  it "should return 26 to 15" do
    sum_of_digits(15).should == 26
  end

  it "should return 1366 to 1000" do
    sum_of_digits(1000).should == 1366
  end
end
