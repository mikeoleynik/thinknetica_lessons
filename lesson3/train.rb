class Train
  attr_accessor :car_count, :speed      #количество вагонов, скорость
  attr_accessor :route
  attr_reader :current_station, :next_station, :prev_station # станции
  attr_reader :train_number, :train_type     #номер поезда, тип поезда
  
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
    if speed == 0
      @car_count += 1
    end
  end

  def del_car
    if speed == 0
      @car_count -= 1
    end
  end

  def cars_number
    puts "Количество вагонов: #{car_count}"
  end

  def gets_routes(train_route)
    # Принимать маршрут следования
  end

  def show_routes
    # Показывать предыдущую станцию, текущую, следующую, на основе маршрута
  end

  def go_prev
    # Перемещаться между станциями, указанными в маршруте
  end

  def go_next
    # Перемещаться между станциями, указанными в маршруте
  end
end