# coding: utf-8

class Train
  attr_accessor :car_count, :speed      #количество вагонов, скорость
  attr_accessor :route
  attr_reader :train_number, :train_type     #номер поезда, тип поезда
  attr_accessor :current_station
  
  def initialize(train_number, train_type, car_count)
    @train_number = train_number
    @train_type = train_type
    @car_count = car_count
    @speed = 0
  end

  def stop
    @speed = 0    
  end

  def corrent_speed
    puts "Текущая скорость: #{speed}"
  end

  def add_car
      @car_count += 1 if speed == 0     
  end

  def del_car
      @car_count -= 1 if speed == 0 
  end

  def cars_number
    puts "Количество вагонов: #{car_count}"
  end

  def gets_routes(train_route)
    self.route = train_route
    self.current_station = 0
  end

  def current_station
    puts "Current station is #{route.station(current_station).name}" if current_station.zero?
  end

  def next_station
    puts "Next station will be #{route.station(current_station + 1).name}" if route.station(current_station + 1).nil?
  end

  def prev_station
    puts "Previous station was #{route.station(current_station - 1).name}" if route.nil?
  end

  def go_prev
    self.current_station -= 1 unless current_station.zero?
  end

  def go_next
    self.current_station += 1 unless route.station(current_station + 1).nil?
  end


end