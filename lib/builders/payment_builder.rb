require 'models/payment'

class PaymentListBuilder
    def payment_list_builder(payments_json)
        payment_list = []

        JSON.parse(payments_json).each do |payment|
            payment_list.push(Payment.new(payment['user'], payment['amount']))
        end 

        payment_list
    end
end