require 'garage'

describe Garage do
  it "Create a new Garage object" do
    garage = Garage.new
  end

  it  { is_expected.to respond_to(:collect_from).with(1).argument }

  it  "Returns available capacity" do
    expect(subject.capacity).to be_a(Integer)
  end

  it "Can be initialised with a capacity" do
    garage = Garage.new(6)
    expect(garage.capacity).to eq 6
  end

  it "initializes with a default capacity" do
    expect(subject.capacity).to eq Garage.DEFAULT_CAPACITY
  end


end
