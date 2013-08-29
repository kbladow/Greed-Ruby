require "test/unit"
require "greed.rb"

class GreedTest < Test::Unit::TestCase
  def test_score_of_an_empty_list_is_zero
    assert_equal 0, score([])
  end
  
  def test_3_1s_equals_1000
    assert_equal 1000, score([1,1,1])
  end
  
  def test_3_ns_equals_100_times
    assert_equal 200, score([2,2,2])
    assert_equal 300, score([3,3,3])
    assert_equal 400, score([4,4,4])
    assert_equal 500, score([5,5,5])
    assert_equal 600, score([6,6,6])
  end
  
  def test_ot_3_1s_equals_100
    assert_equal 100, score([1])
  end
  
  def test_ot_3_5s_equals_50
    assert_equal 50, score([5])
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

  def test_score_of_multiple_1s_and_5s_is_the_sum_of_individual_scores
    assert_equal 300, score([1,5,5,1])
  end

  def test_score_of_single_2s_3s_4s_and_6s_are_zero
    assert_equal 0, score([2,3,4,6])
  end

  def test_score_of_mixed_is_sum
    assert_equal 250, score([2,5,2,2,3])
    assert_equal 550, score([5,5,5,5])
  end

end