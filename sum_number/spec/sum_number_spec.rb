require_relative '../lib/sum_number'
require 'pry'

RSpec.describe 'SumNumber' do
  describe '#sum_of_numbers' do
    context 'sum is valid' do
      let(:sum_number) { SumNumber.new(12, 3) }
      it 'is valid' do
        expect(sum_number.sum_of_numbers).to eq 15
      end
    end

    context 'sum is minus' do
      let(:sum_number) { SumNumber.new(12, -2) }
      it 'valid' do
        expect(sum_number.sum_of_numbers).to eq 10
      end
    end

    context 'sum is minus' do
      let(:sum_number) { SumNumber.new(-12, -2) }
      it 'valid' do
        expect(sum_number.sum_of_numbers).to eq -14
      end
    end

    context 'sum with foat' do
      let(:sum_number) { SumNumber.new(12, 2.2) }
      it 'valid' do
        expect(sum_number.sum_of_numbers).to eq 14.2
      end
    end

    context 'sum with foat is minus' do
      let(:sum_number) { SumNumber.new(12, -2.2) }
      it 'valid' do
        expect(sum_number.sum_of_numbers).to eq 9.8
      end
    end

    context 'sum with zero is minus' do
      let(:sum_number) { SumNumber.new(0, -2.2) }
      it 'valid' do
        expect(sum_number.sum_of_numbers).to be_truthy
      end
    end

    context 'sum with strihg' do
      let(:sum_number) { SumNumber.new('2', -2.2) }
      it 'valid' do
        expect(sum_number.sum_of_numbers).to be_truthy
      end
    end
  end
end
