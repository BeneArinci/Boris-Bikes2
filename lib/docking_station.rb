class DockingStation
attr_reader :docking_station
  def dock(bike)
    if @docking_station.nil?
      @docking_station = bike
    else
      fail "no space available"
    end 
  end

  def release_bike
    if @docking_station.nil?
      fail "no bikes available"
    else
      @docking_station = nil
    end
  end
end


class Bike
  def working?
    true
  end
end
