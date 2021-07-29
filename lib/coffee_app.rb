# Put your code here!
require 'classes/drink'
class CoffeeApp
  def self.call(prices_json, orders_json, payments_json)

    drink_name = JSON.parse(prices_json)
    name = drink_name[0]["drink_name"]
    price = drink_name[0]["prices"]
    drink_list = Drink.new(name, price)
    puts drink_list
  end
end


