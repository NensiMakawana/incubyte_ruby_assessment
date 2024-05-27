class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  def add
    raise "Only string value allowed." if @numbers.class != String
  end
end
