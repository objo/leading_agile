class FizzBuzz
  def translate(number)
    if (number % 3 == 0) && (number % 5 == 0)
      return "FizzBuzz"
    elsif (number % 3 == 0)
      return "Fizz"
    elsif (number % 5 == 0)
      return "Buzz"
    else
      return number
    end
  end

  def to_s
    (1..100).collect { |num| translate(num) }
  end
end
