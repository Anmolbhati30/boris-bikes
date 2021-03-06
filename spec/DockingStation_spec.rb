require "docking_station"
describe DockingStation do 
  let(:bike) { double :bike, :working? => true } 
  let(:broken_bike) { double :broken_bike, :working? => false}

  it "Create a new DockingStation object" do
    station = DockingStation.new
  end

  it "Respond to release_bike" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  describe '#release_bike' do
    it 'releases a working bike' do
      subject.dock(bike)
      released_bike = expect(subject.release_bike)

      expect(bike).to be_working
    end
  end

  it  { is_expected.to respond_to(:dock).with(1).argument }
 
  it "Docks bike" do
    station = DockingStation.new
    expect(station.dock(bike)).to eq bike
  end

  it "Returns docked bikes" do
    station = DockingStation.new
    station.dock(bike)
    expect(station.bikes).to eq [bike]
  end

  it "Returns error message when no bikes available" do
    expect { subject.release_bike }.to raise_error 'No bikes available!'
  end

  it "Sets capacity to 6. Returns error message when bikes is full" do
    station = DockingStation.new(6)
    6.times { station.dock(bike) }
    expect { station.dock(bike) }.to raise_error 'Docking station is full!'
  end

  it "Returns error message when bikes is full" do
    station = DockingStation.new
    20.times { station.dock(bike) }
    expect { station.dock(bike) }.to raise_error 'Docking station is full!'
  end

  it "Doesn't release broken bikes" do
    station = DockingStation.new
    2.times { station.dock(bike) }
    3.times { station.dock(broken_bike) }
    2.times { station.release_bike }

    expect { station.release_bike }.to raise_error 'No bikes available!'
  end

end