require 'models/calculator'

describe Calculator do
    it 'object creation' do
        order1 = Order.new('coach', Drink.new('long black', {'small'=>3.25,'medium'=>3.50}), 'medium')
        order2 = Order.new('coach', Drink.new("flat white", {'small'=>3.50, 'medium'=>4.00, 'large'=>4.50}), 'large')
        payment = Payment.new("coach", 2.50)
        user = User.new('coach')
        user_result = Calculator.new(user)
        user.set_payment_list([payment])
        user.set_order_list([order1,order2])
        
        expect(user_result.user_debt).to eq({"user"=>"coach", "order_total"=>8.00, "payment_total"=>2.50, "balance"=>5.50})
    end
    context 'if a field comes empty' do
        it 'without size of the drink' do
            order1 = Order.new('coach', Drink.new('long black', {'small'=>3.25,'medium'=>3.50}), 'medium')
            order2 = Order.new('coach', Drink.new("flat white", {'small'=>3.50, 'medium'=>4.00}), 'large')
            payment = Payment.new("coach", 2.50)
            user = User.new('coach')
            user_result = Calculator.new(user)
            user.set_payment_list([payment])
            user.set_order_list([order1,order2])
            
            expect(user_result.user_debt).to eq({"user"=>"coach", "order_total"=>3.50, "payment_total"=>2.50, "balance"=>1.0})
        end
        it 'without price of the drink' do
            order = Order.new('coach', Drink.new('long black', {'small'=>3.25,'medium'=>nil}), 'medium')
            payment = Payment.new("coach", 2.50)
            user = User.new('coach')
            user_result = Calculator.new(user)
            user.set_payment_list([payment])
            user.set_order_list([order])
            
            expect(user_result.user_debt).to eq({"user"=>"coach", "order_total"=>0, "payment_total"=>2.50, "balance"=>-2.50})
        end
    end
end