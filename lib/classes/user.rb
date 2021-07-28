class user
    attr_reader :user, :orders, :payments

    def initialize(user, orders = [], payments = [])
        @user = user
        @orders = orders 
        @payments = payments
    end 

    def order_list(orders)
        orders.each do |order|
            @orders.push(order) if @user == order.user
        end
    end

    def payment_list(payments)
        payments.each do |payment|
            @payments.push(payment) if @user == payment.user
        end
    end
end