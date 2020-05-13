class DockingStation
attr_reader :bikes
  def initialize
    @bikes = []
  end

  def dock(bike)
    if @bikes.length < 20
      @bikes << bike
    else
      fail "no space available"
    end
  end

  def release_bike
    if @bikes.empty?
      fail "no bikes available"
    else
      @bikes.pop
    end
  end
end


class Bike
  def working?
    true
  end
end
