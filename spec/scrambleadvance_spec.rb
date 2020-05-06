require './scrambleadvance.rb'

describe ScrambleAdvance do
  it 'can return contents' do
    diary = ScrambleAdvance.new('random text')
    expect(diary.read).to eq('random text')
  end

  describe '#scramble_by_advancing_chars' do
    it 'can scramble contents in steps of 2' do
      diary = ScrambleAdvance.new('abc')
      expect(diary.scramble_by_advancing_chars(2)).to eq('cde')
    end

    it 'can scramble contents in steps of 5' do
      diary = ScrambleAdvance.new('abc')
      expect(diary.scramble_by_advancing_chars(5)).to eq('fgh')
    end
  end

  describe '#unscramble_by_advancing_chars' do
    it 'can unscramble contents in steps of 2' do
      diary = ScrambleAdvance.new('zyx')
      expect(diary.unscramble_by_advancing_chars(2)).to eq('xwv')
    end

    it 'can unscramble contents in steps of 5' do
      diary = ScrambleAdvance.new('zyx')
      expect(diary.unscramble_by_advancing_chars(5)).to eq('uts')
    end
  end
end
