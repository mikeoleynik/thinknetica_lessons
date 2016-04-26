class Station
  attr_reader :name, :trains
    
  def initialize(name)
    @name = name
    @trains = []       
  end 

  def add_train(train, type)
    trains << train 
  end

  def send_train
    trains.delete(train)
  end

  def show_trains
    puts "Список поездов на станции: #{@name}"
    trains.each do |train|
      puts "Поезд № #{train}."
    end
  end

  def show_type(type)
     trains.each { |train| train == type }
  end
end