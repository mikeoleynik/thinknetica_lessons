# coding: utf-8

# В классе RailwayStation (жд станция) создать метод класса all, 
# который выводит список всех станций, созданных на данный момент

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