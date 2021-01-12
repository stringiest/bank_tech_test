# frozen_string_literal: true

require 'account'

describe Account do
  context 'new instances of Account' do
    it 'should be an instance of Account' do
      expect(subject).to be_an_instance_of Account
    end

    it 'should initialize with a balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  context 'depositing money' do
    it 'responds to the method deposit' do
      expect(subject).to respond_to(:deposit).with(2).arguments
    end

    it 'updates transactions array with deposit details' do
      subject.deposit('10-01-2012', '1000')
      expect(subject.transactions).to eq [[
        '10/01/2012',
        100_000,
        0,
        100_000
      ]]
    end
  end

  context 'withdrawing money' do
    it 'responds to the method withdraw' do
      expect(subject).to respond_to(:withdraw).with(2).arguments
    end

    it 'decreases the current balance' do
      subject.deposit('10-01-2012', '1000')
      expect { subject.withdraw('11-01-2012', '500') }.to change { subject.balance }.by(-50_000)
    end

    it 'updates transactions array with withdrawal details' do
      subject.deposit('10-01-2012', '1000')
      subject.withdraw('11-01-2012', '500')
      expect(subject.transactions).to eq [[
        '10/01/2012',
        100_000,
        0,
        100_000
      ], [
        '11/01/2012',
        0,
        50_000,
        50_000
      ]]
    end
  end
end
