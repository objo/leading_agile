require 'test/unit'

class FizzBuzz
  def initialize(_start, _end)
    raise "Start must be greater than zero" if _start < 1
  end
end

class FizzBuzzTestCase < Test::Unit::TestCase

  def test_no_numbers_less_than_one
    assert_raises RuntimeError do
      FizzBuzz.new(-1, 1)
    end
  end
  
end
