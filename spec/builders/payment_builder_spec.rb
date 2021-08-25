require 'builders/payment_builder'
require 'json'

describe 'PaymentListBuilder' do
  context 'The hash comes' do
    it 'complete' do
      payment_json = [
        { "user": 'coach', "amount": 2.50 },
        { "user": 'ellis', "amount": 2.60 },
        { "user": 'rochelle', "amount": 4.50 }
      ]

      payment_builder = PaymentListBuilder.new
      payment_list = payment_builder.payment_list_builder(payment_json.to_json)
      expect(payment_list.size).to eq 3
    end
    it 'with wrong user' do
      payment_json = [
        { "amount": 2.50 },
        { "user": 'ellis', "amount": 2.60 },
        { "user": 'rochelle' }
      ]

      payment_builder = PaymentListBuilder.new
      payment_list = payment_builder.payment_list_builder(payment_json.to_json)
      expect(payment_list.size).to eq 1
    end
    it 'empty' do
      payment_json = []

      payment_builder = PaymentListBuilder.new
      payment_list = payment_builder.payment_list_builder(payment_json.to_json)
      expect(payment_list.size).to eq 0
    end
  end
end
