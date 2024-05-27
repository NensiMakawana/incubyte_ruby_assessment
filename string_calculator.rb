class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def add
    raise "Only string value allowed." if @numbers.class != String
    number_array = @numbers.split(/[^0-9-]+/).map(&:to_i)
    negatives_array = number_array.select{ |i| i<0 }
    raise "Cannot accept negatives." if negatives_array.length > 0
    total = number_array.inject(0){|sum,x| sum + x }
  end
end

# p StringCalculator.new("").add
# p StringCalculator.new("1").add
# p StringCalculator.new("1,2").add
# p StringCalculator.new("1\n2").add
# p StringCalculator.new("1\\;2,3").add
