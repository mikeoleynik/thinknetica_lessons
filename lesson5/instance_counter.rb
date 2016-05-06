# Создать модуль InstanceCounter, содержащий следующие методы класса и инстанс-методы, 
# которые подключаются автоматически при вызове include в классе:
# Методы класса:
#        - instances, который возвращает кол-во экземпляров данного класса
# Инастанс-методы:
#        - register_instance, который увеличивает счетчик кол-ва экземпляров класса и который можно 
#          вызвать из конструктора. При этом данный метод не должен быть публичным.

Module InstanceCounter

  @@instances = 0

    def self.instances
      @@instances
    end

  protected
    def register_instance # поместить в любой initialize
      @@instances += 1  
    end

end  