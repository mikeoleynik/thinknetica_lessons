require_relative "./train.rb"
require_relative "./station.rb"
require_relative "./route.rb"
require_relative "./cars.rb"
require_relative "./cargo_train.rb"
require_relative "./passenger_train.rb"
require_relative "./cargo_car.rb"
require_relative "./passenger_car.rb"


station = Station.new("Lipetsk") # Создавать станции
station = Station.new("Voronezh")
train_1 = PassengerTrain.new(2, 12) # Создавать поезда
train_2 = CargoTrain.new(30, 13)

station.show_trains # Просматривать список поездов на станции
station.list_station # Просматривать список станций


car_1 = CargoCar.new(1, "cargo_car") # Добавлять вагоны к поезду
car_2 = CargoCar.new(1, "cargo_car")
car_3 = PassengerCar.new(1, "passenger_car")
train_2.del_car # Отцеплять вагоны от поезда


station.add_train_to_station(2) # Помещать поезда на станцию
