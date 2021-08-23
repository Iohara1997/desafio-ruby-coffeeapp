require 'builders/order_builder'
require 'json'

describe 'OrderListBuilder' do
    context 'The hash comes' do
        it 'complete' do
            order_json = [
                { "user": "coach", "drink": "long black", "size": "medium" },
                { "user": "ellis", "drink": "long black", "size": "small" },
                { "user": "rochelle", "drink": "flat white", "size": "large" }
            ]
            drink1 = Drink.new('flat white', { "small"=> 3.50, "medium"=> 4.00, "large"=> 4.50 })
            drink2 = Drink.new('long black', { "small"=> 3.25, "medium"=> 3.50})

            order_builder = OrderListBuilder.new
            order_list = order_builder.order_list_builder(order_json.to_json, [drink1, drink2])
            expect(order_list.size).to eq 3
        end
        it 'with wrong user' do
            order_json = [
                { "drink": "long black", "size": "medium" },
                { "user": "ellis", "drink": "long black", "size": "small" },
                { "user": "rochelle" }
            ]
            drink1 = Drink.new('flat white', { "small"=> 3.50, "medium"=> 4.00, "large"=> 4.50 })
            drink2 = Drink.new('long black', { "small"=> 3.25, "medium"=> 3.50})

            order_builder = OrderListBuilder.new
            order_list = order_builder.order_list_builder(order_json.to_json, [drink1, drink2])
            expect(order_list.size).to eq 1
        end
        it 'empty' do
            order_json = []
            drink1 = Drink.new('flat white', { "small"=> 3.50, "medium"=> 4.00, "large"=> 4.50 })
            drink2 = Drink.new('long black', { "small"=> 3.25, "medium"=> 3.50})

            order_builder = OrderListBuilder.new
            order_list = order_builder.order_list_builder(order_json.to_json, [drink1, drink2])
            expect(order_list.size).to eq 0
        end 
    end
end
