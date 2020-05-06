require './scramblereverse.rb'

describe ScrambleReverse do
  it 'can read contents' do
    diary = ScrambleReverse.new('test text')
    expect(diary.read).to eq('test text')
  end

  describe '#scramble_by_reversing' do
    it 'can reverse one word' do
      diary = ScrambleReverse.new('testing')
      expect(diary.scramble_by_reversing).to eq('gnitset')
    end

    it 'can reverse several words' do
      diary = ScrambleReverse.new('testing the length of strings')
      expect(diary.scramble_by_reversing).to eq('sgnirts fo htgnel eht gnitset')
    end
  end

  describe '#unscramble_by_reversing' do
    it 'can rearrange one word' do
      diary = ScrambleReverse.new('testing')
      diary.scramble_by_reversing
      expect(diary.unscramble_by_reversing).to eq('testing')
    end

    it 'can rearrange several words' do
      diary = ScrambleReverse.new('testing the length of strings')
      diary.scramble_by_reversing
      expect(diary.unscramble_by_reversing).to eq('testing the length of strings')
    end
  end
end
