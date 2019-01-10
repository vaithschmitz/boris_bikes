class Bike
  def working?
  	return true 
  end

end

class DockingStation
  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  
  end

  def dock(bike)
    fail "Dock full" unless !@bike
    @bike = bike
  end

end


