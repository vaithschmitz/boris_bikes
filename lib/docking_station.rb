class Bike
  def working?
  	return true 
  end
end

class DockingStation
  def release_bike
    return Bike.new
    end
end