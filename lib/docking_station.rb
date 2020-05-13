class DockingStation
attr_reader :bikes
  def initialize
    @bikes = []
  end

  def dock(bike)
    fail "no space available" if full?
    @bikes << bike
  end

  def release_bike
    fail "no bikes available" if empty?
    @bikes.pop
  end

DEFAULT_CAPACITY = 20

private

  def full?
    @bikes.length == DEFAULT_CAPACITY
  end

  def empty?
   @bikes.empty?
  end
end


class Bike
  def working?
    true
  end
end
