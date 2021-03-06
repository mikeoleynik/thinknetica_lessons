# coding: utf-8
require_relative './instance_counter.rb'
require_relative './validation.rb'
require_relative './acessors.rb'

class Station
  include InstanceCounter
  extend Accessors
  include Validation

  NAME_FORMAT = /[a-z]+\d*/

  attr_reader :name, :trains
  attr_accessor_with_history :my_attr
  strong_attr_accessor(:strong_attr, String)

  validate :name, :presence
  # validate :name, :format, NAME_FORMAT
  # validate :station, :type, Station

  @@stations = []

  def self.all
    @@stations
  end

  def initialize(name)
    @name = name
    validate!
    @trains = []
    @station = []
    @@stations << self
  end

  def station_list
    @@stations
  end

  def add_train_to_station(train)
    @station << train
  end

  def add_train(train)
    @trains << train
  end

  def send_train(train)
    @trains.delete(train)
  end

  def show_trains
    puts "Список поездов на станции: #{@name}"
    trains.each do |train|
      puts "Поезд № #{train}."
    end
  end

  def show_type(type)
    @trains.each { |train| train == type }
  end

  def trains_on_station
    @trains.each { |train| yield(train) }
  end

  alias tr_to_st add_train_to_station
end
