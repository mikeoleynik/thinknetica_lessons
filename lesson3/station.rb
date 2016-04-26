class Station
  attr_reader :name, :trains
  # Имеет название, которое указывается при ее создании
  
  
  def initialize(name)
    @name = name
    @trains = []       
  end 

  def add_train(train, type)
    # Может принимать поезда (по одному за раз)     
    trains << train 
  end

  def send_train
    # Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).    
    trains.delete(train)
  end

  def show_trains
    # Может показывать список всех поездов на станции, находящиеся в текущий момент
    puts "Список поездов на станции: #{@name}"
    trains.each do |train|
      puts "Поезд № #{train}."
    end
  end

  def show_type(type)
    # Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
     trains.each { |train| train == type }
  end
end