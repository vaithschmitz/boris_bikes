require "docking_station"

# check methods to release bike
describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
end

# check docking methods
describe DockingStation do
  it {expect(subject).to respond_to(:dock).with(1).argument}
  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  

  describe '#release_bike' do
    it "raises an error if no bikes in dock" do
  	expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe "#dock" do
  	it "raises and error if dock full" do
  	#dock bike for test
  	subject.dock(Bike.new)
  	# raise error because there is a bike docked 
    expect{subject.dock(Bike.new)}.to raise_error "Dock full"
    end
  end
end

 


  