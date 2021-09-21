class Van
  attr_reader :capacity

  @DEFAULT_CAPACITY = 5

  class << self
    attr_reader :DEFAULT_CAPACITY
  end
  
  def initialize(capacity = Van.DEFAULT_CAPACITY)
    @capacity = capacity
  end

  def collect_from(station)
  
  end
end