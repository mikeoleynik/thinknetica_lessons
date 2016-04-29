require_relative "./train.rb"
require_relative "./station.rb"
require_relative "./route.rb"
require_relative "./cars.rb"
require_relative "./cargo_train.rb"
require_relative "./passenger_train.rb"
require_relative "./cargo_car.rb"
require_relative "./passenger_car.rb"


stations = []
stations << Station.new("Lipetsk") 
stations << Station.new("Voronezh")
puts "#{stations}" 

train_array = []
train_array << PassengerTrain.new(2, 12) 
train_array << CargoTrain.new(30, 13)
puts "#{train_array}"

train = CargoTrain.new(3, 33)
train.add_car_to_train

car_1 = CargoCar.new(1) 
car_2 = CargoCar.new(2)
car_3 = PassengerCar.new(1)


# Помещать поезда на станцию 
# Просматривать список поездов на станции