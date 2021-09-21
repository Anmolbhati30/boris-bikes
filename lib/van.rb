class Van
  attr_reader :capacity

  @DEFAULT_CAPACITY = 5

  class << self
    attr_reader :DEFAULT_CAPACITY
  end
  
  def initialize(capacity = Van.DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def collect_from(station)
    
  end

  def drop_off_at(garage)
    fail "No bikes available!" if @bikes.empty?
  end
end