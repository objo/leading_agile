require 'test/unit'
require_relative "../fizz_buzz"

class FizzBuzzTestCase < Test::Unit::TestCase

  def setup
    @f = FizzBuzz.new
  end
  
  def test_number_divisible_by_three_returns_fizz
    assert_equal "Fizz", @f.translate(3)
    assert_equal "Fizz", @f.translate(6)
    assert_equal "Fizz", @f.translate(9)
  end

  def test_number_divisible_by_five_returns_buzz
    assert_equal "Buzz", @f.translate(5)
    assert_equal "Buzz", @f.translate(10)
  end

  def test_numbers_not_divisible_by_three_or_five_return_actual_number
    assert_equal 1, @f.translate(1)
    assert_equal 2, @f.translate(2)
    assert_equal 4, @f.translate(4)
    assert_equal 7, @f.translate(7)
  end

  def test_numbers_divisible_by_both_returns_fizzbuzz
    assert_equal "FizzBuzz", @f.translate(15)
    assert_equal "FizzBuzz", @f.translate(30)
  end
end
