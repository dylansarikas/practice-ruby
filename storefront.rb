require "./edible_module.rb"

class StoreFront
  include IsEdible
  attr_accessor :price, :smell, :color

  def initialize(input_hash)
    @price = input_hash[:price]
    @smell = input_hash[:smell]
    @color = input_hash[:color]
  end

  def print_out
    puts "This costs #{price} schmackos, smells #{smell}, and looks like #{color}"
  end

end