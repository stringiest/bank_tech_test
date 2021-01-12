# frozen_string_literal: true

class Print
  def initialize
    @columns = ['date', 'credit', 'debit', 'balance']
  end

  def print_statement(account)
    statement = format_lines(account)
    statement.unshift(write_header)
    p 'printing statement'
    p statement
    statement.each { |entry| puts entry }
    # instead of puts need method that returns each line of statementon new line
  end

  def write_header
    @columns.join(' || ')
  end

  def format_lines(account)
    array = []
    account.transactions.each do |transaction|
      format_array(transaction)
      array << transaction.join(' || ').split.join(' ')
    end
    array
  end

  private

  def format_array(array)
    for i in 1..3
      if array[i] > 0
        array[i] = '%.2f' % (array[i] / 100)
      else
        array[i] = ''
      end
    end
  end
end
