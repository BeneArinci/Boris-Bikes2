require 'docking_station'

describe DockingStation do

  it 'dock' do
    expect(DockingStation.new).to respond_to(:dock).with(1).argument
  end

  it 'release bike when no bikes available' do
    expect {DockingStation.new.release_bike}.to raise_error("no bikes available")
  end

  it 'dock a bike if no space available' do
    docking_test = DockingStation.new
    20.times{docking_test.dock('bike')}
    expect {docking_test.dock('bike')}.to raise_error("no space available")
  end

it 'when passed no arguments, sets DEFAULT_CAPACITY' do
  expect(DockingStation.new.instance_variable_get(:@capacity)).to eq(20)
end

it 'when passed no arguments, sets DEFAULT_CAPACITY' do
  expect(DockingStation.new(30).instance_variable_get(:@capacity)).to eq(30)
end

end
