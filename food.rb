require "./edible_module.rb"
require "./storefront.rb"

class Food < StoreFront
  include IsEdible
  def initialize(input_hash)
    super
    @shelf_life = -3
  end

  def print_out
    super
    puts "with a shelf life of #{@shelf_life} years"
  end

end