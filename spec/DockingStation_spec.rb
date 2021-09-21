require "docking_station"
describe DockingStation do 
  it "Create a new DockingStation object" do
    station = DockingStation.new
  end

  it "Respond to release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it "release_bike returns a Bike" do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike).to be_a Bike
  end

  # describe "#dock" do

  it  { is_expected.to respond_to(:dock).with(1).argument }
  # end

  it "Docks bike" do
    station = DockingStation.new
    bike = Bike.new
    expect(station.dock(bike)).to eq bike
  end

  it "returns docked bikes" do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    expect(station.bikes).to eq bike
  end


end
