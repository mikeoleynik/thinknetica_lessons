require_relative train
require_relative station
require_relative route
require_relative cars
require_relative cargo_train
require_relative passenger_train
require_relative cargo_car
require_relative passenger_car


station = Station.new(name) # Создавать станции
station.show_trains # Просматривать список поездов на станции
station.list_station # Просматривать список станций

train = Train.new(train_number, train_type, car_count) # Создавать поезда
train.add_car # Добавлять вагоны к поезду
train.del_car # Отцеплять вагоны от поезда


station.add_train_to_station # Помещать поезда на станцию
