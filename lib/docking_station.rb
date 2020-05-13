class DockingStation
attr_reader :docking_station
  def dock(bike)
    @docking_station = bike
  end

  def release_bike
    Bike.new
  end
end


class Bike
  def working?
    true
  end
end
