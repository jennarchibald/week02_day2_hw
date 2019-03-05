class Bear
  attr_reader :name, :type
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end


  def food_count
    return @stomach.count
  end

  def roar
    return "ROOOOAAAAARRRRR!!!"
  end

  def take_fish_from_river(river)
    fish = river.fish_population.sample
    @stomach << fish
    river.fish_population.delete(fish)
  end
end
