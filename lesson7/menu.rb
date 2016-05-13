require_relative "./company_name.rb"
require_relative "./instance_counter.rb"
require_relative "./train.rb"
require_relative "./station.rb"
require_relative "./route.rb"
require_relative "./cars.rb"
require_relative "./cargo_train.rb"
require_relative "./passenger_train.rb"
require_relative "./cargo_car.rb"
require_relative "./passenger_car.rb"

station = Station.new("Alabama")

station.add_train(22, "cargo")
station.add_train(222, "cargo")
station.add_train(2212, "cargo")
station.add_train(242, "cargo")
station.show_trains

# связывает их между собой ??

# Создает тестовые данные (станции, поезда, вагоны) и связывает их между собой.
# Используя созданные в рамках задания методы, написать код, который перебирает последовательно все станции и для 
# каждой станции выводит список поездов в формате:
# - Номер поезда, тип, кол-во вагонов
# А для каждого поезда на станции выводить список вагонов в формате:
# - Номер вагона (можно назначать автоматически), тип вагона, кол-во свободных и занятых мест 
# (для пассажирского вагона) или кол-во свободного и занятого объема (для грузовых вагонов).