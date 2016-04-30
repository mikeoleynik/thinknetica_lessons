require_relative "./train.rb"

class CargoTrain < Train

  def initialize(train_number, train_type = :cargo, car_count)
    super
  end

  def add_cargo_to_train(car_type = :cargo)
    super  
  end

  def del_cargo_to_train(car_type = :cargo)
    super 
  end

end