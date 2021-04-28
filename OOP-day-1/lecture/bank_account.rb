class BankAccount
  attr_reader :balance # we don't wnat to let users overwrite it!
  attr_accessor :name

  def initialize(owner_name)
    @balance = 0
    @owner_name = owner_name
  end
end


# my_account = BankAccount.new("Louis B.")
