require "docking_station"

# check methods to release bike
describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
  	it {subject.release_bike == Bike.new}
  	it { expect(subject.release_bike).to be_working }
end

# check docking methods
describe DockingStation do
 it {expect(subject).to respond_to(:dock).with(1).argument}
 it {expect(subject).to respond_to(:bike)}
 it "docks a bike" do
   bike = Bike.new
   expect(subject.dock(bike)).to eq bike
   expect(subject.bike).to eq bike
end
end