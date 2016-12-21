require 'test/unit'

class FizzBuzz
  def initialize(_start, _end)
    raise "Start must be greater than zero" if _start < 1
    raise "End must be 100 or less" if _end > 100
  end
end

class FizzBuzzTestCase < Test::Unit::TestCase

  def test_start_must_be_greater_than_zero
    assert_raises RuntimeError do
      FizzBuzz.new(-1, 1)
    end
  end

  def test_end_must_be_100_or_less
    assert_raises RuntimeError do
      FizzBuzz.new(1, 101)
    end
  end
end
