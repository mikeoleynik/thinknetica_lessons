# coding: utf-8

class Routes
  attr_reader :route
  

  def initialize(primary, terminal)
    @route = [primary, terminal]   
  end 

  def add_station(station)
    @route.insert(-2, station)
  end  

  def del_station(del_station)
    @route.delete(del_station)
  end   

  def show_station
    puts "В маршрут входят следующие станции:"
    puts @route
  end

  private
  attr_writer :route # потому что 
end