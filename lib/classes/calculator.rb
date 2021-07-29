class Calculator
    def initialize(user)
        @user = user 
    end 

    def user_debt
        total_order()
        total_payment()
        calculate_result()
    end