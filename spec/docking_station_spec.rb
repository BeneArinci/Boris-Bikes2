require 'docking_station'

describe DockingStation do
  it 'release_bike' do
    expect(DockingStation.new.release_bike).to be_an_instance_of(Bike)
  end

end
