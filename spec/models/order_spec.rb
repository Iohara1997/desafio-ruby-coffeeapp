require 'models/order'

describe Order do
  it 'object creation' do
    user_name = 'coach'
    drink_name = 'long black'
    drink_size = 'medium'
    order_list = Order.new(user_name, drink_name, drink_size)
    expect(order_list.class).to eq(Order)
  end
end
