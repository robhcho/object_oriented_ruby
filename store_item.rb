# A. Use the terminal to create a new folder in your actualize folder called object_oriented_ruby.
# B. Create a new file in the folder called store_item.rb and open it in Sublime.
# C. Use hashes with symbols to represent the following scenario:
# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
# Bonus: Read more about Ruby’s hash symbol syntax:

# apples = {

#   :color => "red",
#   :price => 5.00,
#   :quantity => 12

# }

# # p "#{apples}"
# p "#{apples[:color]} #{apples[:price]} #{apples[:quantity]}" 

class Item
  attr_reader :product, :color, :price, :quantity
  attr_writer :price

  def initialize(input_product, input_color, input_price, input_quantity)
    @product = input_product
    @color = input_color
    @price = input_price
    @quantity = input_quantity
  end


  def info
    "These #{color} #{product} cost $#{price} and come in packs of #{quantity}"
  end
end


apples = Item.new("apples", "red", 5.0, 12)
p apples.info
apples.price = 10
p apples.info

class Item
  attr_reader :product, :color, :price, :quantity
  attr_writer :price

  def initialize(input_hash)
    @product = input_hash[:product_name]
    @color = input_hash[:color]
    @price = input_hash[:price]
    @quantity = input_hash[:quantity]
  end


  def info
    "These #{color} #{product} cost $#{price} and come in packs of #{quantity}"
  end
end


apples = Item.new({product_name: "apples", color: "red", price: 5.0, quantity: 12})
p apples.info
apples.price = 10
p apples.info


# class Item
#   attr_reader :product, :color, :price, :quantity
#   attr_writer :price

#   def initialize(options nil)
#     options || = {}
    
#     # @product = input_hash[:product_name]
#     # @color = input_hash[:color]
#     # @price = input_hash[:price]
#     # @quantity = input_hash[:quantity]
#   end


#   def info
#     "These #{color} #{product} cost $#{price} and come in packs of #{quantity}"
#   end
# end


# apples = Item.new({product_name: "apples", color: "red", price: 5.0, quantity: 12})
# p apples.info
# apples.price = 10
# p apples.info
