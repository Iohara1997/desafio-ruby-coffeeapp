class Drink
  attr_reader :name, :prices

  def initialize(name, prices)
    @name = name
    @prices = prices
  end

  def self.valid_drink(drink)
    !drink['drink_name'].nil? and !drink['prices'].nil?
  end
end
