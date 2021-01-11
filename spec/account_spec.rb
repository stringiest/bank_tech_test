require 'account'

describe Account do
  it 'should be an instance of Account' do
    expect(subject).to be_an_instance_of Account
  end

  it 'should initialize with a balance of 0' do
    expect(subject.balance).to eq 0
  end
end
