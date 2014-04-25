# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Lana Rakhman
# 2. Adam Ryssdal
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add things to my grocery list. 
# As a user, I want to remove things from my grocery list. 
# As a user, I want to view my entire grocery list. 
# As a user, I want to check-off items I've purchased. 
# As a user, I want to clear my list when finished shopping. 
 
# Pseudocode
# create class GroceryList
# initialize class GroceryList
# takes multiple items(arguments)
# create the following methods:
# 1. add
# 2. remove
# 3. view
# 4. check_off
# 5. clear
# create class GroceryItem
# initialize class GroceryItem
# takes one argument
# create the following methods:
# 1. name
# 2. quantity
 
 
# Your fabulous code goes here....

class GroceryList

  attr_reader :items, :list
  
  def initialize(*items)
    @items = items
    @list = []
  end
  
  def add_item(*items)
    @list << items
    @list.flatten!
  end
  
  def remove_item(item)
    @list.delete(item)
  end

  def view_list
  	puts "Here is everything in my list:"
    @list.each { |i| p "#{i.quantity} #{i.name}"  }
  end
  
end


class GroceryItem

  attr_reader :name, :quantity

  def initialize(name, quantity)
    @name = name
    @quantity = quantity
  end
  

end


apple = GroceryItem.new("apple(s)", 6)
hamburger = GroceryItem.new("hamburger(s)", 10)
orange = GroceryItem.new("orange(s)", 2)

my_list = GroceryList.new
my_list.add_item(apple, hamburger, orange)

my_list.view_list





# DRIVER CODE GOES HERE. 

p my_list.list.length == 3
p apple.name == "apple(s)"
p hamburger.name == "hamburger(s)"
p orange.name == "orange(s)"
p apple.quantity == 6
p hamburger.quantity == 10
p orange.quantity == 2
p my_list.list.include?(apple) == true
p my_list.list.include?(hamburger) == true
p my_list.list.include?(orange) == true
 