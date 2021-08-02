# Put your code here!
require 'classes/drink'
require 'classes/order'
require 'classes/payment'
class CoffeeApp
  def self.call(prices_json, orders_json, payments_json)

    drinks_list = JSON.parse(prices_json)
    drink_name = drinks_list[0]["drink_name"]
    drink_price = drinks_list[0]["prices"]

    drink_list = Drink.new(drink_name, drink_price)
    puts drink_list

    orders_list = JSON.parse(orders_json)
    user_name = orders_list[0]["user"]
    drink_name = orders_list[0]["drink"]
    size_drink = orders_list[0]["size"]

    order_list = Order.new(user_name, drink_name, size_drink)
    puts order_list

    payments_list = JSON.parse(payments_json)
    client_name = payments_json[0]["user"]
    amount_client = payments_json[0]["amount"]

    payment_list = Payment.new(client_name, amount_client)
    puts payment_list

  end
end


