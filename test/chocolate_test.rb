require 'minitest/autorun'
require 'minitest/pride'
require './lib/chocolate'

class ChocolatesTest < Minitest::Test
  def test_correct_chocolate_sum1
    all_scores = [68, 26, 33, 71, 78, 39, 39, 83, 92, 44, 81, 44, 72, 99, 25, 20, 69, 63, 66, 67, 46, 61, 71, 22, 36, 88, 94, 71, 21, 72, 58, 69, 31, 72, 73, 89, 43, 92, 72, 35, 68, 85, 60, 41, 37, 65, 73, 86, 60, 39]
    chocolates = Chocolates.new(all_scores)
    assert_equal 104, chocolates.find_chocolate_count
  end

  def test_correct_chocolate_sum2
    all_scores = [21, 67, 49, 98, 88, 84, 39, 59, 72, 84, 25, 58, 62, 24, 32,97, 27, 98, 36, 55, 60, 31, 42, 87, 64, 27, 50, 21, 66, 41, 24, 99, 40, 85, 97, 28, 70, 37, 67, 42, 53, 24, 32, 47, 28, 77, 76, 67, 27, 92]
    chocolates = Chocolates.new(all_scores)
    assert_equal 98, chocolates.find_chocolate_count
  end

  def test_correct_chocolate_sum3
    all_scores = [94, 95, 87, 83, 93, 94, 71, 21, 51, 31, 27, 24, 65, 55, 28,55, 82, 33, 97, 65, 81, 37, 20, 76, 41, 92, 33, 22, 61, 85, 99, 87, 80, 38, 70, 25, 64, 73, 26, 95, 37, 33, 52, 82, 20, 60, 37, 82, 73, 66]
    chocolates = Chocolates.new(all_scores)
    assert_equal 100, chocolates.find_chocolate_count
  end

  def test_correct_chocolate_sum4
    all_scores = [68, 29, 39, 48, 74, 22, 67, 40, 73, 38, 45, 81, 67, 45, 75,39, 72, 78]
    chocolates = Chocolates.new(all_scores)
    assert_equal 35, chocolates.find_chocolate_count
  end

  def test_correct_chocolate_sum5
    all_scores = [55, 91, 23, 27, 25, 41, 42, 32, 20, 82, 35, 45, 69, 33, 58]
    chocolates = Chocolates.new(all_scores)
    assert_equal 26, chocolates.find_chocolate_count
  end

  def test_correct_chocolate_sum6
    all_scores = [100, 80, 90]
    chocolates = Chocolates.new(all_scores)
    assert_equal 5, chocolates.find_chocolate_count
  end

  def test_correct_chocolate_sum7
    all_scores = [80, 90, 100]
    chocolates = Chocolates.new(all_scores)
    assert_equal 6, chocolates.find_chocolate_count
  end

  def test_correct_chocolate_sum8
    all_scores = [100, 90, 80]
    chocolates = Chocolates.new(all_scores)
    assert_equal 6, chocolates.find_chocolate_count
  end
  #
  # def test_correct_chocolate_sum9
  #   all_scores = Array.new(100_000_000) { rand(1..100) }
  #   chocolates = Chocolates.new(all_scores)
  #   assert_equal 1, chocolates.find_chocolate_count
  # end
end
