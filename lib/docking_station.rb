require_relative 'bike'

class DockingStation 
  attr_reader :bikes
  def initialize
    @bikes
  end

  def release_bike
    fail 'No bikes available!' unless @bikes
    return @bikes
  end

  def dock(bike)
    fail 'Docking station is full!' if @bikes
    @bikes = bike
    return bike
  end
end