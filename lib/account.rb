require 'date'
class Account
  attr_reader :balance, :transactions

  def initialize(balance: 0)
    @balance = balance
    @transactions = []
  end

  def deposit(date, amount)
    deposited_amount = (amount.to_f * 100).to_i
    @balance += deposited_amount
    @transactions << {:date => Date.parse(date).strftime('%d/%m/%Y'),
      :credit => deposited_amount,
      :debit => 0,
      :running_balance => @balance}
  end

  def withdraw(date, amount)
  end
end
