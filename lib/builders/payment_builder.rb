require 'models/payment'

class PaymentListBuilder
    def payment_list_builder(payments_json)
        payment_list = []

        JSON.parse(payments_json).each do |payment|
            if !payment['user'].nil? and !payment['amount'].nil?
                payment_list.push(Payment.new(payment['user'], payment['amount']))
            end
        end 

        payment_list
    end
end