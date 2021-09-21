require_relative 'bike'

class DockingStation 

  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available!' if (empty? || !@bikes.last.working?)

    return @bikes.pop
  end

  def dock(bike)
    fail 'Docking station is full!' if full?

    if bike.working?
      @bikes << bike
    else
      @bikes.unshift(bike)
    end

    return bike
  end

  private 
  def full? 
    return @bikes.length >= @capacity
  end

  def empty?
    return @bikes.empty?
  end
end