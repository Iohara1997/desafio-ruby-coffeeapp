# Put your code here!
require 'classes/payment'
class CoffeeApp
  def self.call(prices_json, orders_json, payments_json)
    payments_list = []
    JSON.parse(payments_json).each do |payment|
      payments_list.push(Payment.new(payment['user'], payment['account']))
    end
    payments_list
    payment_list = payments_list
    return payment_list.to_json

  end
end


