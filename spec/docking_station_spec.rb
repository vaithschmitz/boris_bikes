require "docking_station"

# check methods to release bike
describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
end

# check docking methods
describe DockingStation do
 it {expect(subject).to respond_to(:dock).with(1).argument}
 it {expect(subject).to respond_to(:bike)}
 it "docks a bike" do
   bike = Bike.new
   expect(subject.dock(bike)).to eq bike
  end
 
  describe '#release_bike' do
    it "raises an error if no bikes in dock" do
  	expect {subject.release_bike}.to raise_error 'No bikes available'
  end

  end
  
end


