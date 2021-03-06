require 'models/order'

class OrderListBuilder
    def order_list_builder(orders_json, drink_list)
        order_list = []

        JSON.parse(orders_json).each do |order|
            drink_list.each do |drink|
                if !order['user'].nil? and !drink.nil? and !order['size'].nil?
                    if (order["drink"] == drink.name)
                        order_list.push(Order.new(order['user'], drink, order['size']))
                    end
                end
            end
        end
        order_list
    end
end
