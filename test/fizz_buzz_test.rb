require 'test/unit'

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
end



class FizzBuzzTestCase < Test::Unit::TestCase

  def test_number_divisible_by_three_returns_fizz
    f = FizzBuzz.new

    assert_equal "Fizz", f.translate(3)
    assert_equal "Fizz", f.translate(6)
    assert_equal "Fizz", f.translate(9)
  end

  def test_number_divisible_by_five_returns_buzz
    f = FizzBuzz.new

    assert_equal "Buzz", f.translate(5)
    assert_equal "Buzz", f.translate(10)
  end

  def test_numbers_not_divisible_by_three_or_five_return_actual_number
    f = FizzBuzz.new

    assert_equal 1, f.translate(1)
    assert_equal 2, f.translate(2)
    assert_equal 4, f.translate(4)
    assert_equal 7, f.translate(7)
  end

  def test_numbers_divisible_by_both_returns_fizzbuzz
    f = FizzBuzz.new

    assert_equal "FizzBuzz", f.translate(15)
    assert_equal "FizzBuzz", f.translate(30)
  end
end
