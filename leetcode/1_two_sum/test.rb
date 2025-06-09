require_relative 'two_sum.rb'
require 'test/unit'
class MyTest <Test::Unit::TestCase
  def test_two_sum_ex1
    assert_equal [0, 1], two_sum([2, 7, 11, 15], 9)
  end

  def test_two_sum_ex2
    # binding.break
    assert_equal [1, 2], two_sum([3, 2, 4], 6)
  end

  def dest_two_sum_ex3
    assert_equal [0, 1], two_sum([3, 3], 6)
  end
end