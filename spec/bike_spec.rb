require 'docking_station'

describe Bike do

  it 'working?' do
    expect(Bike.new).to respond_to (:working?)
  end

  it 'working?' do
    expect(Bike.new.working?).to eq(true)
  end
end
