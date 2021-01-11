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
    @transactions << {
      date: Date.parse(date).strftime('%d/%m/%Y'),
      credit: deposited_amount,
      debit: 0,
      running_balance: @balance
    }
  end

  def withdraw(date, amount)
    withdrawn_amount = (amount.to_f * 100).to_i
    @balance -= withdrawn_amount
    @transactions << {
      date: Date.parse(date).strftime('%d/%m/%Y'),
      credit: 0,
      debit: withdrawn_amount,
      running_balance: @balance
    }
  end
end
