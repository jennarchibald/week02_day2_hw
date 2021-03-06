class River

  attr_reader :name, :fish_population


  def initialize(name, fish_population)
    @name = name
    @fish_population = fish_population
  end

  def fish_count
    return @fish_population.count
  end

  def take_fish
    fish = @fish_population.sample
    @fish_population.delete(fish)
    return fish
  end
end
