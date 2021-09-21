class Garage
  attr_reader :capacity

  @DEFAULT_CAPACITY = 50

  class << self
    attr_reader :DEFAULT_CAPACITY
  end
  
  def initialize(capacity = Garage.DEFAULT_CAPACITY)
    @capacity = capacity
  end

  def collect_from(van)
  
  end
end