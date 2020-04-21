require 'oystercard'

describe Oystercard do

  describe 'balance' do

    it 'responds to balance' do
      expect(subject).to respond_to(:balance)
    end
  
    it 'balance has 0' do
      expect(subject.balance).to eq(0)
    end

  end
  
  describe '#top_up' do

    it { is_expected.to respond_to(:top_up).with(1).argument }
    
    it '#top_up will increase balance' do
      expect { subject.top_up(10) }.to change { subject.balance }.by 10
    end

  end
  
end
