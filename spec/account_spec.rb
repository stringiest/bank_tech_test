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
      expect(subject.transactions).to eq [{:date=>'10/01/2012', :credit=>100000, :debit=>0, :running_balance=>100000}]
    end
  end
end
