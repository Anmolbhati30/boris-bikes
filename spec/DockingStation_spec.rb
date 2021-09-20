require "DockingStation"
describe DockingStation do 
  it "Create a new DockingStation object" do
    dock = DockingStation.new
  end

  it "Respond to release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
end