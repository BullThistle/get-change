require('rspec')
require('coin_combo')
require('pry')

describe('coin_combo')do
  let(:change){Change.new()}

  it("returns true if the input is greater than 25")do
    makechange = MakeChange.new(0, 0, 0, 0, 25)
    makechange.find_change
    expect(makechange.output_change).to(eq("1 quarter 0 dime 0 nickle 0 penny"))
  end
  it("returns true if the input is greater than 10 but less than 25")do
    makechange = MakeChange.new(0, 0, 0, 0, 10)
    makechange.find_change
    expect(makechange.output_change).to(eq("0 quarter 1 dime 0 nickle 0 penny"))
  end
  it("returns true if the input is greater than 5 but less than 10")do
    makechange = MakeChange.new(0, 0, 0, 0, 5)
    makechange.find_change
    expect(makechange.output_change).to(eq("0 quarter 0 dime 1 nickle 0 penny"))
  end
  it("returns true if the input is greater than 1 but less than 5")do
    makechange = MakeChange.new(0, 0, 0, 0, 1)
    makechange.find_change
    output = makechange.output_change
    expect(makechange.output_change).to(eq("0 quarter 0 dime 0 nickle 1 penny"))
  end
end
