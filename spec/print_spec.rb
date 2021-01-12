# frozen_string_literal: true

require 'print'

describe Print do
  context 'new instances of Print' do
    it 'should be a new instance of Print' do
      expect(subject).to be_an_instance_of Print
    end
  end

  context 'print output' do
    it 'should print the column headers' do
      expect(subject.write_header).to eq('date || credit || debit || balance')
    end

    it 'should format the transactions' do
      account = Account.new
      account.deposit('10-01-2012', '1000')
      expect(subject.format_lines(account)).to eq([['10/01/2012 || 1000.00 || || 1000.00']])
    end

    it 'should print a statement' do
      account = Account.new
      account.deposit('10-01-2012', '1000')
      account.withdraw('11-01-2012', '500')
      expect(subject.print_statement(account)).to eq('date || credit || debit || balance\n10/01/2012 || 1000.00 || || 1000.00\n11/01/2012 || || 500.00 || 500.00')
    end
  end
end
