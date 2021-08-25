class Order
  attr_reader :user, :drink, :size

  def initialize(user, drink, size)
    @user = user
    @drink = drink
    @size = size
  end

  def self.valid_order(order, drink)
    !order['user'].nil? and !drink.nil? and !order['size'].nil?
  end
end
