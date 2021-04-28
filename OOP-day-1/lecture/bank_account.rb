class BankAccount
  attr_accessor :all

  def initialize(owner_name)
    @balance = 0
    @owner_name = owner_name
  end
end


# my_account = BankAccount.new("Louis B.")
