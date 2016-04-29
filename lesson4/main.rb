require_relative "./train.rb"
require_relative "./station.rb"
require_relative "./route.rb"
require_relative "./cars.rb"
require_relative "./cargo_train.rb"
require_relative "./passenger_train.rb"
require_relative "./cargo_car.rb"
require_relative "./passenger_car.rb"


stations = []
stations << Station.new("Lipetsk") # Создавать станции
stations << Station.new("Voronezh")
puts stations # Просматривать список станций и список поездов на станции

train_array = []
train_1 << PassengerTrain.new(2, 12) # Создавать поезда
train_2 << CargoTrain.new(30, 13)
puts train_array

car_1 = CargoCar.new(1) # Создал вагон
car_2 = CargoCar.new(2)
car_3 = PassengerCar.new(1)
car_1.
train_2.del_car # Отцеплять вагоны от поезда

# Помещать поезда на станцию