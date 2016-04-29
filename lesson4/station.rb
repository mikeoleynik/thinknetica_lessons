class Station
  attr_reader :name, :trains
    
  def initialize(name)
    @name = name
    @trains = [] # объекты вагонов сохранять сюда (из passenger_car && cargo_car)
    @station = []
  end 

  def add_train_to_station(train)
    station << train
  end

  def add_train(train, type)
    trains << train 
  end

  def send_train(train)
    trains.delete(train)
  end

  def show_trains
    puts "Список поездов на станции: #{@name}"
    trains.each do |train|
      puts "Поезд № #{train}."
    end
  end

  def show_type(type)
     trains.each { |train| train == type } # выводит просто список, не по типу.
  end
end