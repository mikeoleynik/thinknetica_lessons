# coding: utf-8

class Station
  include InstanceCounter
  NAME_FORMAT = /[a-z]+\d*/
  attr_reader :name, :trains
  
  @@stations = []

  def self.all
    @@stations
  end

  def initialize(name)
    @name = name
    name
    @trains = []
    @station = []
    @@stations << name
    validate!
  end 

  def valid?
    validate!
  rescue
    false
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

  private
  def validate!
    raise "Name can't be nil" if name.nil?    
    raise "Wrong name" if name !~ NAME_FORMAT
    true
  end  
end