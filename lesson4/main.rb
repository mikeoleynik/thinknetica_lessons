require_relative train
require_relative station
require_relative route
require_relative cars
require_relative cargo_train
require_relative passenger_train
require_relative cargo_car
require_relative passenger_car


station = Station.new("Lipetsk") # Создавать станции
station.show_trains # Просматривать список поездов на станции
station.list_station # Просматривать список станций

train_1 = PassengerTrain.new("029A") # Создавать поезда
train_2 = CargoTrain.new("030A")

car_1 = CargoCar.new(1, "cargo_car") # Добавлять вагоны к поезду
car_2 = CargoCar.new(1, "cargo_car")
car_3 = PassengerTrain.new(1, "passenger_car")
train.del_car # Отцеплять вагоны от поезда


station.add_train_to_station # Помещать поезда на станцию
