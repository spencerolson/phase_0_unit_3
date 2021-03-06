#1. Spencer Olson
#2. Alec Ashford
#3. Andy Principe

#As a user, we want to be able to store our list for later use
#As a user, we want to be able to see the list printed out in its entirety
#As a user, we want to be able to check items off the list, effectively removing them from the list
#As a user, we want to be able to add items to our list

class Item
  attr_accessor :name, :quantity
  def initialize(name, quantity)
    @name = name
    @quantity = quantity
  end
  
  def purchase_item
    @quantity = 0
  end
  
  def display
    puts "Name: #{@name}, Quantity: #{@quantity}"
  end
end


class GroceryList
  
  def initialize
    @grocery_list = []
  end
  
  def add(item_name, item_quantity = 1)
    @grocery_list.push(Item.new(item_name, item_quantity))
  end
  
  def purchase(item_name)
    @grocery_list.select{|item| item.name == item_name}[0].purchase_item    
  end
  
  def print_list
    @grocery_list.each{|item| item.display}
  end
end

def assert
  raise "Assertion failed!" unless yield
end

 new_list = GroceryList.new

 puts "adding 3 oranges to the list..."
 new_list.add("orange", 3)
 new_list.print_list

 puts "purchasing oranges..."
 assert{new_list.purchase("orange") == 0}
 new_list.print_list

 puts "adding a dozen eggs to the list..."
 new_list.add("eggs", 12)
 new_list.print_list

