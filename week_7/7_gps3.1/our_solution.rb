# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1.Jake Wayne
# 2.Katie Reiner
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to
# As a user, I want to
# As a user, I want to
# As a user, I want to
# As a user, I want to
 
# Pseudocode
# 
# 
# 
# 
# 
# 
 
 
# Your fabulous code goes here....

class Groceries

  def initialize
      @item=[]
  end

  def add(new_item)
      @item.push(new_item)
  end

  def remove(old_item)
      if @item.include? old_item == false 
          raise ArgumentError.new("Item not found")
      else
          @item.delete(old_item)
      end
  end

  def show_all
      puts @item
  end

  def total_items
      puts @item.length
  end
    
end 

class Controller
  def initialize
    @grocery = Groceries.new
    get_user_input
  end
  
  def get_user_input
    puts "What would you like to do?(show/add/remove/total items):" 
    choice=gets.chomp.downcase
    case choice
    when "show"
    	if @item==[]
    		raise ArgumentError.new("Grocery list empty! Add some items!")
    	else
    		puts "Your Grocery List: #{@item.show_all}"
    	end
    when "add"
    	puts "What item would you like to add?:"
    	item=gets.chomp
    	@item.add(item)
    when "remove"
    	puts "What item would you like to remove?:"
    	toss_item= gets.chomp
    	remove(toss_item)
    when "total"
    	if @items==[]
    		raise ArgumentError.new("You have no items in Grocery list")
    	else
    		puts "You have #{total_items()} on your Grocery List"
    	end
    end
end

end

glist=Controller.new

#items=%w(apples bananas chocolate) 
#market=Groceries.new(items)
#market.show_all
#puts "----------"
#market.add("pineapple")
#market.remove("chocolate")
#market.show_all
#market.total_items

# DRIVER CODE GOES HERE. 
 
 
 