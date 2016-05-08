require_relative "./company_name.rb"
require_relative "./instance_counter.rb"
require_relative "./train.rb"
require_relative "./station.rb"

class UI
  attr_reader :stations, :trains
  #attr_accessor :name, :train_number

  def initialize
    @stations = []
    @trains = []
  end

  def start
    loop do
      puts '-- Type \'1\' to create a new station'
      puts '-- Type \'2\' to create a new train'
      puts '-- Enter appropriate number or \'q\' to quit'
      user_input = gets.chomp
      case user_input.downcase
        when '1'
          create_station
        when '2'
          create_train
        when 'q'
          break
        end
      end
    end

private
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

end

ui = UI.new
ui.start