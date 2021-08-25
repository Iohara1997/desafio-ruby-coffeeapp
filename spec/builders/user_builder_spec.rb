require 'builders/user_builder'

describe 'UserListBuilder' do
  context 'The order_list comes' do
    it 'complet' do
      order1 = Order.new('coach', Drink.new('long black', { 'small' => 3.25, 'medium' => 3.50 }), 'medium')
      order2 = Order.new('coach', Drink.new('flat white', { 'small' => 3.50, 'medium' => 4.00, 'large' => 4.50 }),
                         'large')
      order3 = Order.new('ellis', Drink.new('long black', { 'small' => 3.25, 'medium' => 3.50 }), 'small')
      payment1 = Payment.new('coach', 2.50)
      payment2 = Payment.new('ellis', 2.60)
      user_builder = UserListBuilder.new
      user_list = user_builder.user_list_builder([order1, order2, order3], [payment1, payment2])
      expect(user_list.size).to eq 3
    end
    it 'empty' do
      order_list = []
      payment1 = Payment.new('coach', 2.50)
      payment2 = Payment.new('ellis', 2.60)
      user_builder = UserListBuilder.new
      user_list = user_builder.user_list_builder(order_list, [payment1, payment2])
      expect(user_list.size).to eq 0
    end
  end
end
