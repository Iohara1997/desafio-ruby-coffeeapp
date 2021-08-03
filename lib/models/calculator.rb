class Calculator
    attr_reader :user

    def initialize(user)
        @user = user 
    end 

    def user_debt
        total_order()
        total_payment()
        calculate_result()
    end

    def total_order()
        count = 0
        @user.order_list.each { |order| count += order.drink.prices[order.size] }

        @price_total = count
    end

    def total_payment()
        count = 0
        @user.payment_list.each { |order| count += order.account }
        
        @current_payment = count 
    end
    
    def calculate_result
        @result = @price_total - @current_payment
    end
        