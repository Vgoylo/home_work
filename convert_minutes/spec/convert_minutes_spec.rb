# frozen_string_literal: true

require_relative '../lib/convert_minutes'
require 'pry'

RSpec.describe 'ConvertMinutes' do
  describe '#converter' do
    context 'is valid' do
      let(:convert_minutes) { ConvertMinutes.new(5) }
      it 'is valid' do
        expect(convert_minutes.converter).to eq 300
      end
    end

    context 'input string' do
      let(:convert_minutes) { ConvertMinutes.new('5') }
      it 'is valid' do
        expect(convert_minutes.converter).to eq 300
      end
    end

    context 'input with float' do
      let(:convert_minutes) { ConvertMinutes.new }
      it 'is valid' do
        expect(convert_minutes.converter).to eq 0
      end
    end
  end
end
