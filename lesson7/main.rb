# coding: utf-8

require_relative "./company_name.rb"
require_relative "./instance_counter.rb"
require_relative "./train.rb"
require_relative "./station.rb"
require_relative "./cars.rb"
require_relative "./cargo_train.rb"
require_relative "./passenger_train.rb"
require_relative "./cargo_car.rb"
require_relative "./passenger_car.rb"

class UI
  attr_reader :stations, :trains
  #attr_accessor :name, :train_number

  def initialize
    @stations = []
    @trains = []
    @train = []
  end

  def start
    loop do
      puts '-- Type \'1\' to create a new station'
      puts '-- Type \'2\' to create a new train'
      puts '-- Type \'3\' to create a new passenger car'
      puts '-- Type \'4\' to create a new cargo car'
      puts '-- Type \'5\' to view of trains at the station'
      puts '-- Type \'6\' to view train cars'
      puts '-- Enter appropriate number or \'q\' to quit'
      user_input = gets.chomp
      case user_input.downcase
        when '1'
          create_station
        when '2'
          create_train
        when '3'
          create_pass_car(type = :cargo)
        when '4'
          create_cargo_car(type = :passenger)
        when '5'
          show_train
        when '6'
          show_car
        when 'q'
          break
        end
      end
    end
  
  def create_station
    puts "Input name of the station"
    name = gets.chomp
    self.stations << Station.new(name)
  rescue RuntimeError => e
    puts e.message
  end

  def create_train
    puts "Input train number"
    train_number = gets.chomp
    self.trains << Train.new(train_number)
  rescue RuntimeError => e
    puts e.message
  end

  def create_pass_car(type)
    puts "Input car number"
    number = gets.chomp
    puts "Input capacity"
    capacity = gets.chomp
    self.trains << PassengerCar.new(number, capacity) 
  end

  def create_cargo_car
    puts "Input car number"
    number = gets.chomp      
    self.trains << CargoCar.new(number)
  end

  def show_train
    @stations.each {|station| puts "Train number:#{train_number}, cars count: #{train.cars.size}" }
    yield(station) if block_given?
  end

  def show_car
    @trains.each {|train| puts "Номер вагона:#{}, тип вагона: #{type}, свободно: #{}, занято: #{}"}
    yield(train) if block_given?
  end


end

ui = UI.new
ui.start