require 'models/user'

describe User do
    it 'User object creation' do
        order1 = Order.new('coach', 'long black', 'medium')
        order2 = Order.new('coach', 'supermochacrapucaramelcream', 'large')
        payment1 = Payment.new("coach", 27)
        payment2 = Payment.new('coach', 42)
        user = User.new('coach')
        user.set_order_list([order1, order2])
        user.set_payment_list([payment1, payment2])
        expect(user.class).to eq(User)
    end
end