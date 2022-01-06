require "./storefront.rb"
require "./food.rb"

blobs = StoreFront.new price: 13, smell: "poor", color: "puke green"
globs = StoreFront.new price: 12, smell: "okay i guess", color: "can't really describe it"
slobs = StoreFront.new price: 14, smell: "wonderful", color: "pretty in pink"
flobs = Food.new price: 15, smell: "actually odorless", color: "strangely invisible" 
blobs.print_out
puts globs.price
puts globs.smell
puts slobs.color
puts " "
blobs.price=(1414)
blobs.smell=("awfully poor")
blobs.color=("noxious vomit green")
blobs.print_out
flobs.print_out
blobs.is_edible