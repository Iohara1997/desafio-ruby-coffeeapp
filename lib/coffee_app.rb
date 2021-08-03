# Put your code here!
require 'models/drink'
require 'models/order'
require 'models/payment'
class CoffeeApp
  def self.call(prices_json, orders_json, payments_json)

    drink_json = JSON.parse(prices_json)
    drink_name = drink_json[0]["drink_name"] #clean code
    drink_price = drink_json[0]["prices"]

    drink_list = Drink.new(drink_name, drink_price)
    puts drink_list.name

    payment_json = JSON.parse(payments_json)
    client_name = payment_json[0]["user"]
    amount_client = payment_json[0]["amount"]

    payment_list = Payment.new(client_name, amount_client)
    puts payment_list.user

    order_json = JSON.parse(orders_json)
    user_name = order_json[0]["user"]
    drink_name = order_json[0]["drink"]
    size_drink = order_json[0]["size"]

    order_list = Order.new(payment_list.user, drink_list.name, size_drink)
    puts order_list
  end
end


