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
    all = (0..100).collect { |num| translate(num) }
    all.to_s
  end
end
