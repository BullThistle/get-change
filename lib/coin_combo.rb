class MakeChange
  def initialize(change)
    @quarter = 0
    @dime = 0
    @nickel = 0
    @penny = 0
    @change = change
  end

  def find_change
    until @change = 0 do
      if @change > 24 then
        @change -= 25
        @quarter += 1
      elsif @change  > 9 then
        @change -= 10
        @dime += 1
      elsif @change > 4 then
        @change -= 5
        @nickel +=1
      elsif @change > 0 then
        @change -= 1
        @penny +=1
      end
    end
  end

  def output_change
    puts @quarter + "quarter(s)" +
    @dime + "dime(s)" +
    @nickle + "nickle(s)" +
    @penny + "penny"
end

puts "Please enter a number:"
change = gets

makechange = MakeChange.new(change)
