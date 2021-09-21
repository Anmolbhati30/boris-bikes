require_relative 'bike'

class DockingStation 
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available!' if empty?
    return @bikes.pop
  end

  def dock(bike)
    fail 'Docking station is full!' if full?
    @bikes << bike
    return bike
  end

  private 
  def full? 
    return @bikes.length >= 20
  end

  def empty?
    return @bikes.empty?
  end
end