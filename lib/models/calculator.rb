class Calculator
    attr_reader :user, :price_total, :current_payment, :balance

    def initialize(user)
        @user = user 
    end 

    def user_debt
        total_order()
        total_payment()
        calculate_result()
        user_result()
    end

    private 
    
    def total_order()
        count = 0
        @user.orders.each { |order| count += order.drink.prices[order.size] }
        @price_total = count.round(2)
    end

    def total_payment()
        count = 0
        @user.payments.each { |order| count += order.account }
        @current_payment = count 
    end
    
    def calculate_result
        @balance = @price_total - @current_payment
    end
        
    def user_result 
        result = {}

        result['user'] = @user.user_name
        result['order_total'] = @price_total
        result['payment_total'] = @current_payment
        result['balance'] = @balance
        result
    end
end