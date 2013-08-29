require "test/unit"
require "greed.rb"

class GreedTest < Test::Unit::TestCase
  def test_3_1s_equals_1000
    assert_equal 1000, score([1,1,1,2,2])
  end
  
  def test_3_ns_equals_100_times
    assert_equal 200, score([2,2,2,2,2])
  end
  
  def test_ot_3_1s_equals_100
    assert_equal 100, score([1,2,3,4,2])
  end
  
  def test_ot_3_5s_equals_50
    assert_equal 50, score([5,2,3,4,2])
  end
  
  def test_comb_1
    assert_equal 1150, score([1,1,1,5,1])
  end
  
  def test_comb_2
    assert_equal 0, score([2,3,4,6,2])
  end
  
  def test_comb_3
    assert_equal 350, score([3,4,5,3,3])
  end
  
  def test_comb_4
    assert_equal 250, score([1,5,1,2,4])
  end
end