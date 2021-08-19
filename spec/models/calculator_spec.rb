require 'models/calculator'

describe Calculator do
    it 'Calculator object creation' do
        order1 = Order.new('coach', Drink.new('long black', {'small':3.25,'medium':3.50}), 'medium')
        order2 = Order.new('coach', Drink.new("flat white", {'small': 3.50, 'medium': 4.00, 'large': 4.50}), 'large')
        payment = Payment.new("coach", 2.50)
        user = User.new('coach')
        user_result = Calculator.new(user)
        user.set_payment_list([payment]) 
        user.set_order_list([order1,order2])
        
        expect(user_result.user_debt).to eq({"user": "coach", "order_total": 8.00, "payment_total": 2.50, "balance": 5.50})
    end
end