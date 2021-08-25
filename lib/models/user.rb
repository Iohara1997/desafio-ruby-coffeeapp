class User
  attr_reader :user_name, :orders, :payments

  def initialize(user_name, orders = [], payments = [])
    @user_name = user_name
    @orders = orders
    @payments = payments
  end

  def set_order_list(orders)
    orders.each do |order|
      @orders.push(order) if @user_name == order.user
    end
  end

  def set_payment_list(payments)
    payments.each do |payment|
      @payments.push(payment) if @user_name == payment.user
    end
  end
end
