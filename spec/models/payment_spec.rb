require 'models/payment'

describe Payment do
  it 'object creation' do
    user_name = 'coach'
    user_amount = 27
    payment_list = Payment.new(user_name, user_amount)
    expect(payment_list.class).to eq(Payment)
  end
end
