require 'docking_station'

describe DockingStation do
  
  it 'dock' do
    expect(DockingStation.new).to respond_to(:dock).with(1).argument
  end

  it 'release bike when no bikes available' do
    expect {DockingStation.new.release_bike}.to raise_error("no bikes available")
  end


end
