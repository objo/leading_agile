require 'test/unit'

class FizzBuzz
  def initialize(_start, _end)
    raise "Start must be greater than zero" if _start < 1
    raise "End must be 100 or less" if _end > 100
  end

  def translate(number)
    if (number % 3 == 0)
      return "Fizz"
    elsif (number % 5 == 0)
      return "Buzz"
    else
      return number
    end
  end
end

class FizzBuzzTestCase < Test::Unit::TestCase

  def test_start_must_be_greater_than_zero
    exception = assert_raises RuntimeError do
      FizzBuzz.new(-1, 1)
    end
    assert_match /Start must be greater than zero/, exception.message
  end

  def test_end_must_be_100_or_less
    exception = assert_raises RuntimeError do
      FizzBuzz.new(1, 101)
    end
    assert_match /End must be 100 or less/, exception.message
  end

  def test_number_divisible_by_three_returns_fizz
    f = FizzBuzz.new(1,100)

    assert_equal "Fizz", f.translate(3)
    assert_equal "Fizz", f.translate(6)
    assert_equal "Fizz", f.translate(9)
  end

  def test_number_divisible_by_five_returns_buzz
    f = FizzBuzz.new(1,100)

    assert_equal "Buzz", f.translate(5)
    assert_equal "Buzz", f.translate(10)
  end

  def test_numbers_not_divisible_by_three_or_five_return_actual_number
    f = FizzBuzz.new(1,100)

    assert_equal 1, f.translate(1)
    assert_equal 2, f.translate(2)
    assert_equal 4, f.translate(4)
    assert_equal 7, f.translate(7)
  end
end
