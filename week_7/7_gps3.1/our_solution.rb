# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
<<<<<<< HEAD
# 1. Danny Glover
# 2. Sherwood Callaway
 
## Release 0: User Stories
# With your partner, talk about what you would like to do with your grocery list. Start each statement with "As a user, I want to ..." These are what we call "user stories."

# create an empty shopping list
# add a new item to the shopping list
# remove an item from the shopping list
# change item status from "need" to "have"
# alphabetize the shopping list
# return all the items in one category
# return the items in order of price
# view the entire list 

# Release 1: Pseudocode
# What objects, classes, and methods will you need to do each of the things you identified in your user stories?
=======
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
>>>>>>> FETCH_HEAD

# gList class - a map of grocery items
# methods:
#   Initialize - hash with item names as key, item data in an array as hash value
#   Add - add a new item to the list, its status, price, category
#   Remove - remove an item from the list entirely

# Release 2: Write Driver Code
# Translate your pseudocode into driver code. Write driver code at the bottom (to call the method on the object).

test = Glist.new
test.add("Banana", 1.00, "Fruit", false)
test.add("Strawberry", 2.00, "Fruit", false)
test.viewList()
test.remove("Strawberry")
test.viewList()
puts test.remove("Steak") == "Steak not found."
test.add("Strawberry", 2.00, "Fruit", false)
test.pickupItem("Strawberry") 
test.viewList()
test.dropItem("Strawberry")
test.viewList()

# Release 3: Initial Solution
# Create your initial solution.

<<<<<<< HEAD
class Glist 
    def initialize()
        @items = Hash.new
    end
    
    def add(item, price, category, status)
        item_info = [price, category, status]
        @items[item] = item_info
    end
    
    def remove(item)
        if (@items.include?(item))
            @items.delete(item)
        else
            puts item.to_s + " not found."
            return item.to_s + " not found."
        end
    end
    
    def viewList()
        puts "Grocery list:"
        count = 1
        @items.each_pair do |item, item_info|
            print count.to_s + ". " + item + ": ("
            item_info.each do |x|
                print x.to_s
                if (x != item_info.last) 
                    print ", "
                end 
            end
            puts ")"
            count = count + 1
        end
    end
end

# Release 4: Refactor your solution
# With your partner, review the code. Is it DRY? Are the names good?

class Glist 
    def initialize()
        @items = Hash.new
    end
    
    def add(item, price, category, status)
        item_info = [price, category, status]
        @items[item] = item_info
    end
    
    def remove(item)
        if (@items.include?(item))
            @items.delete(item)
        else
            puts item.to_s + " not found."
            return item.to_s + " not found."
        end
    end
    
    def viewList()
        puts "Grocery list:"
        count = 1
        @items.each_pair do |item, item_info|
            print count.to_s + ". " + item + ": ("
            item_info.each do |x|
                print x.to_s
                if (x != item_info.last) 
                    print ", "
                end 
            end
            puts ")"
            count = count + 1
        end
    end
    
    def pickupItem(item)
        if(@items.include?(item))
            @items[item][2] = true
        end
    end
    
    def dropItem(item)
        if(@items.include?(item))
            @items[item][2] = false
        end
    end
end


# Reflection 
=begin
This was a very successful pairing session with Sherwood.
We spent a good amount of time on our user stories and pseudocode before jumping into the code itself.  
It’s always nice when my pairing sessions focus heavily on pseudocode first, it really reduces confusion a
nd ambiguity when we get to coding.  We decided to use a hash with an array in the value slot.  I think 
there is probably a more elegant way to store this data because it gets a little tricky to remember what
is represented in each slot of the array.  That being said we were able to make a fully functioning 
grocery list.  I think we both felt good about the code and we both got to contribute evenly.  I feel
confident with the learning competencies for this challenge.
=end
=======
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
 
>>>>>>> FETCH_HEAD
