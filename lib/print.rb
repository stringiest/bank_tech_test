# frozen_string_literal: true

class Print
  def initialize
    @columns = ['date', 'credit', 'debit', 'balance']
  end

  def write_header
    @columns.join(' || ')
  end

  def write_line(account)
    array = []
    account.transactions.each do |transaction|
      transaction.each do |k, v|
        array << v
      end
    end
    format_array(array)
    array.join(' || ').split.join(' ')
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
