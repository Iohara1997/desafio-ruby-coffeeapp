require 'models/user'

class UserListBuilder
  def user_list_builder(order_list, payment_list)
    users = build_users(order_list)
    user_list = build_list(users)
    build_user_list(user_list, order_list, payment_list)
  end

  private

  def build_users(order_list)
    users = []
    order_list.each do |order|
      users.push(order.user)
    end

    users
  end

  def build_list(users)
    user_list = []
    users.each do |user|
      user_list.push(User.new(user))
    end
    user_list
  end

  def build_user_list(user_list, order_list, payment_list)
    user_list.each do |user|
      user.set_order_list(order_list)
      user.set_payment_list(payment_list)
    end
    user_list
  end
end
