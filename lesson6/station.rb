# coding: utf-8

# Реализовать проверку (валидацию) данных для всех классов. Проверять основные атрибуты 
# (название, номер, тип и т.п.) на наличие, длину и т.п. (в зависимости от атрибута):
#   - Валидация должна взываться при создании объекта, если объект невалидный, то должно выбрасываться 
#       исключение
#   - Должен быть метод valid? который возвращает true, если объект валидный и false - в противном случае.

class Station
  include InstanceCounter

  attr_reader :name, :trains
  
  @@stations = []

  def self.all
    puts "Станции: #{@@stations}"
  end

  def initialize(name)
    @name = name
    puts "создана станция #{name}"
    @trains = []
    @station = []
    @@stations << name
    validate!
  end 

  def validate!
    raise "sfdsf" if name.nil? # наличие атрибутов    
    raise "dsf invalid" if /[a-z]+\d*/ # в названии только буквы
    
  end

  def valid?
    
  end

  def station_list
    @@stations
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