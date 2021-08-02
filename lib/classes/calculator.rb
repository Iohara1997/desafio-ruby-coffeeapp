class Calculator
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
    # .each, while ou if?

        @price_total = count
    end

    def total_payment()
        count = 0
    # .each, while ou if?
        
        @current_payment = count 
    end
    
    def calculate_result
        @result = @price_total - @current_payment
    end
        