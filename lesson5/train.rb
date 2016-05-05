# coding: utf-8

class Train
  attr_accessor :speed      #количество вагонов, скорость
  attr_accessor :route
  attr_reader :train_number, :cars     #номер поезда, тип поезда
  attr_accessor :current_station
  attr_accessor :type_car

  # В классе Train создать метод класса find, который принимает номер поезда (указанный при его создании) 
  # и возвращает объект поезда по номеру или nil, если поезд с таким номером не найден.
    
  def self.find(train_number)
    @train_number
  end
  
  def initialize(train_number)
    @train_number = train_number
    @speed = 0
    @cars = []
    puts "Создан поезд №#{train_number}"
  end

  def stop
    @speed = 0    
  end

  def corrent_speed
    puts "Текущая скорость: #{speed}"
  end

  def car_count
    @cars.size
  end

  def add_car(car) 
    @cars << car if speed == 0 && car_allowed?(car)
      # if speed == 0 && type_car == "cargo"
      #   @car_count += 1     
      #   puts "Добавлен грузовой вагон #{car_count} к грузовому поезду #{train_number}"
      #   @cars_arr << car 
      # elsif speed == 0 && type_car == "passenger"
      #   @car_count += 1     
      #   puts "Добавлен пассажирский вагон #{car_count} к пассажирскому поезду #{train_number}"
      #   @cars_arr << car
      # end
  end

  def del_car(car)
    @cars.delete(car) if speed == 0
    # if speed == 0 && type_car == "cargo"
    #   @car_count -= 1 
    #   puts "В грузовом поезде #{train_number} теперь вагонов #{car_count} шт."
    # elsif speed == 0 && type_car == "passenger"
    #   @car_count -= 1 
    #   puts "В пассажирском поезде #{train_number} теперь вагонов #{car_count} шт."
    # end
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