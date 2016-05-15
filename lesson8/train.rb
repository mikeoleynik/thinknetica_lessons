class Train
  include InstanceCounter
  include Company

  attr_accessor :speed, :route, :current_station, :type_car
  attr_accessor :train_number, :cars
  NUMBER_TRAIN = /^(\w|\d){3}-*(\w|\d){2}$/

  @@trains = {}

  def self.find(train_number)
    @@trains[train_number]
  end

  def initialize(train_number)
    register_instance
    @train_number = train_number
    @speed = 0
    @cars = []
    @@trains[train_number] = self
    validate!
  end

  def valid?
    validate!
  rescue
    false
  end

  def stop
    @speed = 0
  end

  def corrent_speed
    @speed
  end

  def car_count
    @cars.size
  end

  def add_car(car)
    @cars << car if speed == 0 && car_allowed?(car)
  end

  def del_car(car)
    @cars.delete(car) if speed == 0
  end

  def cars_number
    @cars
  end

  def gets_routes(train_route)
    self.route = train_route
    self.current_station = 0
  end

  def current_station
    route.station(current_station).name if current_station.zero?
  end

  def next_station
    route.station(current_station + 1).name if route.station(current_station + 1).nil?
  end

  def prev_station
    route.station(current_station - 1).name if route.nil?
  end

  def go_prev
    self.current_station -= 1 unless current_station.zero?
  end

  def go_next
    self.current_station += 1 unless route.station(current_station + 1).nil?
  end

  def cars_trains
    @cars.each { |cars| yield(cars) }
  end

  def show
    puts "Train N:#{train_number}"
  end

  private

  def validate!
    raise "Train number can't be nil" if train_number.nil?
    raise 'Wrong train number. Format should be: xxx-xx' if train_number !~ NUMBER_TRAIN
    true
  end
end
