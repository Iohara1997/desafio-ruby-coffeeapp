class Payment
  attr_reader :user, :account

  def initialize(user, account)
    @user = user
    @account = account
  end

  def self.valid_payment(payment)
    !payment['user'].nil? and !payment['amount'].nil?
  end
end
