require 'van'

describe Van do
  it "Create a new Van object" do
    van = Van.new
  end

  it  { is_expected.to respond_to(:collect_from).with(1).argument }


  it  "Returns available capacity" do
    expect(subject.capacity).to be_a(Integer)
  end

  it "Can be initialised with a capacity" do
    van = Van.new(6)
    expect(van.capacity).to eq 6
  end

  it "initializes with a default capacity" do
    expect(subject.capacity).to eq Van.DEFAULT_CAPACITY
  end

end