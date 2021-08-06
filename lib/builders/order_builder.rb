require 'models/order'

class OrderListBuilder(orders_json, drink_list)
    order_list = []

    JSON.parse(orders_json).each |order|
        drink_list.each do |drink|
            if (order[drink] == drink.name) # order[drink] é comparável com drink.name?
