require_relative '../lib/convert_minutes'
require 'pry'

RSpec.describe 'ConvertMinutes' do
  describe '#converter' do
    context 'is valid'
      let(:convert_minutes) { ConvertMinutes.new(5) }
      it 'is valid' do
        expect(convert_minutes.converter).to eq 300
      end
    end
  end
end
