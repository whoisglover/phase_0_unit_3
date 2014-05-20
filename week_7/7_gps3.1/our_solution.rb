# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
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
