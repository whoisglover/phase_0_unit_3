# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Britney Van Valkenburg
# 2. Stuart Pearlman
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to create list
# As a user, I want to add an item
# As a user, I want to remove an item
# As a user, I want to assign quantity
# As a user, I want to display list 
# As a user, I want the option of specifying brands, size
 
# Pseudocode
# create class GroceryItem
# make read/write method for each instance variable
# initialize with name of item (food)
#   item_name, optional quantity and brand (accepts these as arguments)
# turn arguments into instance variables
# 
# create class GroceryList
# create instance method that takes 0-infinte arguments
# create list containing inputed grocery items that will be accessible throughout class
# create #add that takes 1-infinity grocery items and adds them to list
# create #remove that accepts 1-infinity grocery items and removes them from list
# create #display that prints items in list with accompanying information (brand, size, quantity, etc)



# Your fabulous code goes here....
class GroceryItem
  attr_accessor :food, :quantity, :brand, :size
  def initialize(food, quantity=1, brand=nil, size=nil)
    @food = food
    @quantity = quantity
    @brand = brand
    @size = size
  end
end

class GroceryList
  
  def initialize(*items)
    @grocery_list = items
  end
  
  def add(*items)
    items.each { |item| @grocery_list << item }
  end
  
  def remove(*items)
    items.each { |item| @grocery_list.delete(item) }
  end
  
  def display
    to_display = "Your Grocery List includes:\n"
    @grocery_list.each do |item| 
      to_display += "- #{item.food} (#{item.quantity})"
      to_display += ", Brand: #{item.brand}" if item.brand
      to_display += ", Size: #{item.size}" if item.size
      to_display += "\n"
    end
    puts to_display
    to_display
  end
  
  def length
    @grocery_list.length
  end
  
end


# DRIVER CODE GOES HERE. 

def assert
  raise "Assertion Failed" unless yield
end

pear = GroceryItem.new('Pear')  
banana = GroceryItem.new('Banana', 4)
pb = GroceryItem.new('PB', 1, 'Jiffy')
apple = GroceryItem.new('Apple', 8, nil, 'Large')
oj = GroceryItem.new('OJ', 1, 'Tropicana', 'Gallon')

my_list = GroceryList.new(pear, banana)
assert { my_list.length == 2 }

my_list.add(pb, apple, oj)
assert { my_list.length == 5 }

my_list.remove(banana)
assert { my_list.length == 4 }

my_list.display 
assert {my_list.display == "Your Grocery List includes:\n- Pear (1)\n- PB (1), Brand: Jiffy\n- Apple (8), Size: Large\n- OJ (1), Brand: Tropicana, Size: Gallon\n"}