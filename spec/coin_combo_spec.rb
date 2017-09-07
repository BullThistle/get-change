require('rspec')
require('coin_combo')
require('pry')

describe('coin_combo')do
  let(:change){Change.new()}


  it("returns true if the input is greater than 25")do
    makechange = MakeChange.new(25)
    expect(25).to(eq("quarter"))
  end
  it("returns true if the input is greater than 10 but less than 25")do
    makechange = MakeChange.new(10)
    expect(10).to(eq("dime"))
  end
  it("returns true if the input is greater than 5 but less than 10")do
    makechange = MakeChange.new(5)
    expect(5).to(eq("nickel"))
  end
  it("returns true if the input is greater than 1 but less than 5")do
    makechange = MakeChange.new(1)
    expect(1).to(eq("penny"))
  end

















end
