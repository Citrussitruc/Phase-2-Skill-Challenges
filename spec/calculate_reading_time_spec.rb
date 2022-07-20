require 'calculate_reading_time'

RSpec.describe 'calculate_reading_time method' do
  context 'given an empty string' do    
    it 'returns 0' do
      result = calculate_time('')
      expect(result).to eq 0
    end
  end
  context 'given a text of under 200 words' do    
    it 'returns 1' do
      result = calculate_time('word')
      expect(result).to eq 1
    end
  end
  context 'given a text of 200 words' do
    it 'returns 2' do
      result = calculate_time('word ' * 200)
    end
  end
  context 'given a text of 300 words' do
    it 'returns 2' do
      result = calculate_time('word ' * 300)
      expect(result).to eq 2
    end
  end
end