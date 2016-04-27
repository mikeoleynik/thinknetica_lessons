class Routes
  attr_accessor :route

  def initialize(primary, terminal)
    @route = [primary, terminal]   
  end 

  def add_station(station)
    @route.insert(@route.size-1, station)
  end  

  def del_station(del_station)
    @route.delete(del_station)
  end   

  def show_station
    puts "В маршрут входят следующие станции:"
    puts @route
  end
end