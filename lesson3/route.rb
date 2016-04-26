=begin
Класс Маршрут:
- Имеет начальную и конечную станцию, а также список промежуточных станций. 
- Начальная и конечная станции указываютсся при создании маршрута. 
- Промежуточные могут добавляться между ними.
- Может добавлять станцию в список.
- Может удалять станцию из списка.
- Может выводить список всех станций по порядку от начальной до конечной.
=end

class Routes
  attr_reader :route

  def initialize(primary, terminal)
    @route = [primary, terminal] #массив для хранения списка названий станций в маршруте    
  end 

  #метод добавления станции в маршрут
  def add_station(add_name)
    @route.insert(@route.size-1, add_name)
  end  

  #метод удаления станции из маршрута
  def del_station(del_name)
    @route.delete(del_name)
  end   

  def show_station
    @route
  end
end