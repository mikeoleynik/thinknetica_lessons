require_relative "./train.rb"

class PassengerTrain < Train

  def initialize(train_number, train_type = :passenger, car_count)
    super
  end

  def add_pass_to_train(car_type = :passenger)
    super 
  end

  def del_pass_to_train(car_type = :passenger)
  	super 
  end

end