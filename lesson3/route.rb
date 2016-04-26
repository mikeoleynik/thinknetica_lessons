class Routes
  attr_reader :route

  def initialize(primary, terminal)
    @route = [primary, terminal]   
  end 

  def add_station(add_name)
    @route.insert(@route.size-1, add_name)
  end  

  def del_station(del_name)
    @route.delete(del_name)
  end   

  def show_station
    @route
  end
end