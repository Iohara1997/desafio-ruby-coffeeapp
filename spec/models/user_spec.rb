require 'models/user'

describe User do
  it 'object creation' do
    order1 = Order.new('coach', Drink.new('long black', { "small": 3.25, "medium": 3.5 }), 'medium')
    order2 = Order.new('coach',
                       Drink.new('supermochacrapucaramelcream', { "large": 5.0, "huge": 5.5, "mega": 6.0, "ultra": 7.0 }), 'large')
    payment1 = Payment.new('coach', 27)
    payment2 = Payment.new('coach', 42)
    user = User.new('coach')
    expect(user.class).to eq(User)
  end
end
