# blobs = {price: 13, smell: "poor", color: "puke green"}
# globs = {price: 12, smell: "okay i guess", color: "can't really describe it"}
# slobs = {:price => 14, :smell => "wonderful", :color => "pretty in pink"}

# p blobs
# puts globs
# p slobs

# store = [blobs, globs, slobs]
# p store[0][:price]
# p store [0][:color]

class StoreFront
  attr_accessor :price, :smell, :color

  def initialize(price_input, smell_input, color_input)
    @price = price_input
    @smell = smell_input
    @color = color_input
  end

  # def price
  #   @price
  # end

  # def smell
  #   @smell
  # end

  # def color
  #   @color
  # end

  # def price=(input)
  #   @price = input
  # end

  # def smell=(input)
  #   @smell = input
  # end

  # def color=(input)
  #   @color = input
  # end

  def print_out
    puts "This costs #{price} schmackos, smells #{smell}, and looks like #{color}"
  end


end

blobs = StoreFront.new(13, "poor", "puke green")
globs = StoreFront.new(12, "okay i guess", "can't really describe it")
slobs = StoreFront.new(14, "wonderful", "pretty in pink")
blobs.print_out
puts globs.price
puts globs.smell
puts slobs.color
puts " "
blobs.price=(1414)
blobs.smell=("awfully poor")
blobs.color=("noxious vomit green")
blobs.print_out