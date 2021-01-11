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
  end
end
