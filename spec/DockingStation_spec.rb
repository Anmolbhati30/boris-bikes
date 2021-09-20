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
end