require_relative 'bike'

class DockingStation 
  attr_reader :bikes
  def initialize
    @bikes 
  end

  def release_bike
    return Bike.new
  end

  def dock(bike)
    @bikes = bike
    return bike
  end
end