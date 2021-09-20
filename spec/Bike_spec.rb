require 'bike'

describe Bike do
  it "Create a new Bike object" do
    bike = Bike.new
  end

  it "Respond to the method 'working?'" do 
    expect(Bike.new).to respond_to(:working?)
  end

end