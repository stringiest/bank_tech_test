# frozen_string_literal: true

class Print
  def initialize
    @columns = ['date', 'credit', 'debit', 'balance']
  end

  def write_header
    @columns.join(' || ')
  end
end
