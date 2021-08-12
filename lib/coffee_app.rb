require 'builders/drink_builder'
require 'builders/order_builder'
require 'builders/payment_builder'
require 'builders/user_builder'
require 'models/calculator'

class CoffeeApp
  def self.call(prices_json, orders_json, payments_json)
    drink_list = drink_list_builder(prices_json)
    order_list = order_list_builder(orders_json, drink_list)
    payment_list = payment_list_builder(payments_json)

    user_list = user_list_builder(order_list, payment_list)

    result = []

    user_list.each { |user|
      user_result = Calculator.new(user)
      result.push(user_result.user_debt())
    }

    result.to_json

  end

  def self.drink_list_builder(prices_json)
    DrinkListBuilder.new.drink_list_builder(prices_json)
  end 

  def self.order_list_builder(orders_json, drink_list)
    OrderListBuilder.new.order_list_builder(orders_json, drink_list)
  end

  def self.payment_list_builder(payments_json)
    PaymentListBuilder.new.payment_list_builder(payments_json)
  end

  def self.user_list_builder(order_list, payment_list)
    UserListBuilder.new.user_list_builder(order_list, payment_list)
  end
end