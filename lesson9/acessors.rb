module Accessors

  def attr_accessor_with_history
  #   def attr_accessor(*methods)
  #   methods.each do |method|
  #     raise TypeError.new("method name  is not symbol") unless method.is_a?(Symbol)
  #     define_method(method) do
  #       instance_variable_get("@#{method}")
  #     end
  #     define_method("#{method}=") do |v|
  #       instance_variable_set("@#{method}", v)
  #     end
  #   end
  # end
  end

  def strong_attr_acessor
    
  end
end
