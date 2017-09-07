class MakeChange
  attr_writer(:change)
  def initialize(change)
    @change = change
    @quarter = 0
    @dime = 0
    @nickel = 0
    @penny = 0
  end

  def find_change
    until @change == 0 do
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
    return @quarter.to_s + " quarter " +
    @dime.to_s + " dime " +
    @nickel.to_s + " nickle " +
    @penny.to_s + " penny"
  end
end

puts "Please enter a number:"
change = gets.to_i

makechange = MakeChange.new(change)
makechange.find_change
puts makechange.output_change
