# frozen_string_literal: true

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
    @transactions << [
      Date.parse(date).strftime('%d/%m/%Y'),
      deposited_amount,
      0,
      @balance
    ]
  end

  def withdraw(date, amount)
    withdrawn_amount = (amount.to_f * 100).to_i
    @balance -= withdrawn_amount
    @transactions << [
      Date.parse(date).strftime('%d/%m/%Y'),
      0,
      withdrawn_amount,
      @balance
    ]
  end
end
