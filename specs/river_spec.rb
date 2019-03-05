require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Wanda")
    @fish2 = Fish.new("Monty")
    @fish3 = Fish.new("John")

    @fishes = [@fish1, @fish2, @fish3]

    @river1 = River.new("Amazon", @fishes)

    @bear1 = Bear.new("Yogi", "Polar")


  end

  def test_has_name
    assert_equal("Amazon", @river1.name)
  end

  def test_has_fish_population
    assert_equal(@fishes, @river1.fish_population)
  end

  def test_fish_count
    assert_equal(3, @river1.fish_count)
  end

  def test_bear_take_fish_from_river
    @bear1.take_fish_from_river(@river1)
    assert_equal(1, @bear1.food_count)
    assert_equal(2, @river1.fish_count)
  end


end
