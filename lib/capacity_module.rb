module Capacity
  def full?(max_capacity)
    array.length >= max_capacity
  end

 def add(object)
    array << object
 end

   def remove(object)
     array.delete_if { |item| item.first_name == object.first_name && item.last_name == object.last_name }
   end
 end
